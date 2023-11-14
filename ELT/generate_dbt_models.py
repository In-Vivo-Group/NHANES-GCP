import re
import time

import pandas as pd
import requests
import sqlfluff
from bs4 import BeautifulSoup

from all_continuous_nhanes_schemas import table_schemas
from utils import generate_filename

with open("bq_tables.txt", "r") as f:
    tables = f.readlines()

tables = [t.strip() for t in tables if "---" not in t and t != "nhanes_file_metadata"]

skip_columns = ["DSDSUPID"]

with open(f"../dbt/models/all_continuous/bronze/schema.yml", "w") as f:
    f.write(
        f"""version: 2

models:
"""
    )


start_time = time.time()

for table_name in tables:
    if table_name == "nhanes_file_metadata":
        continue
    table_schema = table_schemas[table_name]
    column_type_dict = {
        d["name"]: d["type"] for d in table_schema if d != "nhanes_file_metadata"
    }

    try:
        data_df = pd.read_gbq(
            f"""SELECT DISTINCT doc_file_url, start_year, end_year
            FROM nhanes.{table_name}
            WHERE doc_file_url IS NOT NULL
            ORDER BY start_year DESC
            """,
            project_id="nhanes-genai",
            dialect="standard",
        )

    except Exception as ex:
        print(ex)
        print(table_name)

    variable_definitions = []
    component_description = ""

    for url in data_df["doc_file_url"].tolist():
        time.sleep(1)
        try:
            r = requests.get(url)
        except ConnectionError as e:
            print(f"{e} for {url}")
            continue
        soup = BeautifulSoup(r.text, "lxml")

        if not soup.find("div", id="Codebook"):
            # url = data_df['doc_file_url'].tolist()[1]
            # time.sleep(.5)
            # r = requests.get(url)
            # soup = BeautifulSoup(r.text, 'lxml')
            # if not soup.find('div',id='Codebook'):
            print(f"Unable to find codebook for {table_name} in {url}")
            continue

        else:
            if not component_description:
                component_description = re.sub(
                    r"[^A-Za-z0-9 ,.-]+",
                    "",
                    soup.find("div", id="Sections").find("p").text,
                )
            for variable_section in soup.find("div", id="Codebook").find_all(
                "div", {"class": "pagebreak"}
            ):
                variable_definition = {}
                variable_name = variable_section.find("h3")["id"].upper()
                variable_definition["name"] = variable_name
                for item in list(
                    zip(
                        variable_section.find_all("dt"), variable_section.find_all("dd")
                    )
                ):
                    if "Label" in item[0].text:
                        variable_definition["label"] = item[1].text.strip()
                        variable_definition["code"] = generate_filename(
                            item[1].text.strip(), ""
                        )

                        if variable_definition["code"] in [
                            definition.get("code", None)
                            for definition in variable_definitions
                        ]:
                            variable_definition["code"] = (
                                variable_definition["code"] + "_" + variable_name
                            )

                        if variable_definition["code"][0].isdigit():
                            variable_definition["code"] = (
                                table_name.split("_")[-1][:3]
                                + "_"
                                + variable_definition["code"]
                            )

                    if "Text" in item[0].text or "Instructions" in item[0].text:
                        variable_definition["description"] = re.sub(
                            r"[^A-Za-z0-9 ,.-]+", "", item[1].text.strip()
                        )
                    targets = []
                    if "Target" in item[0].text:
                        targets.append(" ".join(item[1].text.strip().split()))

                    variable_definition["targets"] = targets

                table = variable_section.find("table", {"class": "values"})

                if (
                    variable_name in column_type_dict.keys()
                    and variable_name not in [n["name"] for n in variable_definitions]
                    and variable_name not in skip_columns
                ):
                    if table:
                        headers = []
                        for i in table.find_all("th"):
                            title = i.text.strip()
                            headers.append(title)

                        data = []

                        for j in table.find_all("tr")[1:]:
                            row_data = j.find_all("td")
                            row = [i.text.strip() for i in row_data]
                            data.append(row)

                        table_df = pd.DataFrame(columns=headers, data=data)

                        accepted_values = table_df["Code or Value"].tolist()
                        accepted_codes = table_df["Value Description"].tolist()

                        if (
                            "." in accepted_values
                            and "Range of Values" not in accepted_codes
                        ):
                            data_type = "integer_codes"
                            variable_definition["data_type"] = "integer_codes"
                        elif (
                            "." in accepted_values
                            and "Range of Values" in accepted_codes
                            and len(table_df) <= 3
                        ):
                            if all([d.isdigit() or d == "." for d in accepted_values]):
                                data_type = "integer_codes"
                                variable_definition["data_type"] = "integer_codes"
                            else:
                                data_type = "float"
                                variable_definition["data_type"] = "float"
                        elif (
                            "." in accepted_values
                            and "Range of Values" in accepted_codes
                            and len(table_df) > 3
                        ):
                            data_type = "float_remove_missing"
                            variable_definition["data_type"] = "float"
                        elif any(
                            ["blank" in c for c in table_df["Code or Value"].tolist()]
                        ):
                            data_type = "string"
                            variable_definition["data_type"] = "string"
                        else:
                            data_type = "unknown"
                            variable_definition["data_type"] = "unknown"

                        sql_case_statement = """CASE
"""
                        output_data_type = "FLOAT64"

                        for code, value, cnt, cumul, skip in table_df.values:
                            value = " ".join(value.split()).replace("'", "")
                            if (
                                code != "."
                                and "blank" not in code
                                and "No Lab Specimen" not in value
                            ):
                                if data_type == "integer_codes":
                                    if column_type_dict[variable_name] in ("FLOAT"):
                                        sql_case_statement += f"WHEN SAFE_CAST(ROUND(SAFE_CAST({variable_name} AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST({code} AS FLOAT64),0) AS INT64) THEN '{value}' -- categorize numeric values\n"
                                        output_data_type = "STRING"
                                    elif column_type_dict[variable_name] in ("INTEGER"):
                                        sql_case_statement += f"WHEN SAFE_CAST(ROUND(SAFE_CAST({variable_name} AS FLOAT64),0) AS INT64) = SAFE_CAST({code} AS INT64) THEN '{value}' -- categorize numeric values\n"
                                        output_data_type = "STRING"
                                    else:  ## DATA TYPE IS STRING
                                        if "'" in code:
                                            sql_case_statement += "WHEN REPLACE(REPLACE({},'.0',''),\"'\",\"\") = '{}' THEN '{}' -- categorize string values \n".format(
                                                variable_name,
                                                code.replace("'", ""),
                                                value,
                                            )
                                            output_data_type = "STRING"
                                        else:
                                            sql_case_statement += f"WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST({variable_name} AS FLOAT64),0) AS INT64) AS STRING) = '{code}' THEN '{value}' -- categorize string values \n"
                                            output_data_type = "STRING"
                                elif data_type == "float":
                                    if column_type_dict[variable_name] not in (
                                        "INTEGER",
                                        "FLOAT",
                                    ):
                                        sql_case_statement += f"WHEN {variable_name} IS NOT NULL THEN SAFE_CAST({variable_name} AS FLOAT64) -- correct wrong data types for numerical data \n"
                                        output_data_type = "FLOAT64"
                                    else:
                                        pass
                                elif data_type == "float_remove_missing":
                                    if (
                                        column_type_dict[variable_name]
                                        not in ("INTEGER", "FLOAT")
                                        and "Range of Values" in value
                                    ):
                                        max_value = code.split(" to ")[-1]
                                        max_value = float(max_value)
                                        sql_case_statement += f"WHEN SAFE_CAST({variable_name} AS FLOAT64) > {max_value + 11} THEN NULL -- remove missing, dont know, categories in float field  \n"
                                        output_data_type = "FLOAT64"
                                    else:
                                        pass
                                else:
                                    if column_type_dict[variable_name] in ("STRING"):
                                        if "'" in code:
                                            sql_case_statement += "WHEN REPLACE(REPLACE({},'.0',''),\"'\",\"\") = '{}' THEN '{}' -- categorize string values \n".format(
                                                variable_name,
                                                code.replace("'", ""),
                                                value,
                                            )
                                            output_data_type = "STRING"
                                        else:
                                            sql_case_statement += f"WHEN REPLACE({variable_name},'.0','') = '{code}' THEN '{value}' -- categorize string values \n"
                                            output_data_type = "STRING"
                                    else:
                                        sql_case_statement += f"WHEN SAFE_CAST({variable_name} AS FLOAT64) = SAFE_CAST({code} AS FLOAT64) THEN '{value}' \n"
                                        output_data_type = "STRING"
                            elif "No Lab Specimen" in value:
                                sql_case_statement += f"WHEN SAFE_CAST({variable_name} AS FLOAT64) = SAFE_CAST({code} AS FLOAT64) THEN NULL --remove no lab specimen samples from data \n"
                                output_data_type = "STRING"
                            else:
                                sql_case_statement += (
                                    f"WHEN {variable_name} IS NULL THEN NULL \n"
                                )

                        sql_case_statement += (
                            f"ELSE SAFE_CAST({variable_name} AS {output_data_type}) \n"
                        )

                        variable_definition["sql"] = (
                            sql_case_statement
                            + f" END as {variable_definition['code']}, \n"
                        )
                    else:
                        if variable_definition.get("code", None):
                            variable_definition[
                                "sql"
                            ] = f"{variable_name} as {variable_definition['code']}, -- could not identify transformation logic \n"
                        else:
                            variable_definition[
                                "sql"
                            ] = f"{variable_name} as {variable_name}, -- could not automatically decode name of variable or transformation logic \n"
                else:
                    # variable_definition['sql'] = f"-- {variable_name} as {variable_name}, -- not included in table but included in docs without transformation logic \n"
                    # print(f"Passing on {variable_name}")
                    pass

                if variable_definition:
                    variable_definitions.append(variable_definition)

    stg_alias = f"stg_{table_name}"
    sql = """SELECT
"""

    for d in variable_definitions:
        if d.get("sql", ""):
            sql += d.get("sql", "") + "\n"

    sql += """start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
"""

    sql += """ FROM {{{{ ref('{}') }}}}

/* 
Docs utilized to generate this SQL can be found at:
{}
*/
""".format(
        stg_alias, "\n".join(data_df["doc_file_url"].tolist())
    )

    with open(f"../dbt/models/all_continuous/bronze/schema.yml", "a") as f:
        f.write(
            f"""
  - name: {table_name}
    description: {component_description}
    columns:
"""
        )
        for d in variable_definitions:
            if d.get("code", None) and d.get("description", None):
                f.write(
                    f"""
      - name: {d['code']}
        description: {d['description']}
"""
                )

    with open(f"../dbt/models/all_continuous/staging/{stg_alias}.sql", "w") as f:
        f.write(f"SELECT * FROM nhanes.{table_name}")

    with open(f"../dbt/models/all_continuous/bronze/{table_name}.sql", "w") as f:
        f.write(sql)

    print(f"Finished SQL generation for {table_name}")

print(f"Entire proceess took {time.time() - start_time} seconds")
