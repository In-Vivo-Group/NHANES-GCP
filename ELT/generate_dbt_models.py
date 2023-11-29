import logging
import os
import re
import time

import pandas as pd
import requests
from all_continuous_nhanes_schemas import table_schemas
from bs4 import BeautifulSoup
from utils import generate_filename

# Constants
PROJECT_ID = os.getenv("PROJECT_ID")
TABLES_FILE_PATH = "all_continuous_nhanes_schemas.py"
SCHEMA_YAML_PATH = "../dbt/models/all_continuous/bronze/schema.yml"
STG_SQL_PATH = "../dbt/models/all_continuous/staging/"
BRONZE_SQL_PATH = "../dbt/models/all_continuous/bronze/"
SKIP_COLUMNS = ["DSDSUPID"]

# Configure logging
logging.basicConfig(level=logging.INFO)


def read_tables():
    """
    Reads table names returns a list of table names.

    Returns:
        list: A list of table names read from the file.
    """

    return list(
        sorted(
            list(set([s for s in table_schemas.keys() if s != "nhanes_file_metadata"]))
        )
    )


def write_initial_yaml_schema(file_path):
    """
    Writes the initial YAML schema to a specified file.

    Args:
        file_path (str): The path of the YAML file where the schema will be written.
    """
    with open(file_path, "w") as f:
        f.write("version: 2\n\nmodels:\n")


def scrape_variable_definitions(url):
    """
    Scrapes variable definitions from a given URL using BeautifulSoup.

    Args:
        url (str): The URL from which to scrape data.

    Returns:
        BeautifulSoup object: Parsed HTML content from the URL, or None if the request fails.
    """
    time.sleep(1)
    try:
        response = requests.get(url)
        soup = BeautifulSoup(response.text, "lxml")
        return soup
    except requests.exceptions.RequestException as e:
        logging.error(f"Request failed for {url}: {e}")
        return None


def generate_variable_definitions(data_df, table_schema, table_name, column_type_dict):
    """
    Generates variable definitions by scraping web pages.

    Args:
        data_df (DataFrame): DataFrame containing URLs to scrape.
        table_schema (dict): The schema of the table for which variable definitions are being generated.
        table_name (str): Name of the table for which variable definitions are being generated.
        column_type_dict (dict): Data types of the columns in the table.

    Returns:
        tuple: A tuple containing the component description and a list of variable definitions.
    """

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
            logging.info(f"Unable to find codebook for {table_name} in {url}")
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

                if variable_name not in [
                    definition.get("name", None) for definition in variable_definitions
                ]:
                    for item in list(
                        zip(
                            variable_section.find_all("dt"),
                            variable_section.find_all("dd"),
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
                        and variable_name.strip().upper()
                        not in [n["name"].strip().upper() for n in variable_definitions]
                        and variable_name not in SKIP_COLUMNS
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
                                if all(
                                    [d.isdigit() or d == "." for d in accepted_values]
                                ):
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
                                [
                                    "blank" in c
                                    for c in table_df["Code or Value"].tolist()
                                ]
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
                                        elif column_type_dict[variable_name] in (
                                            "INTEGER"
                                        ):
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
                                        if column_type_dict[variable_name] in (
                                            "STRING"
                                        ):
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
                                    output_data_type = "FLOAT"
                                else:
                                    sql_case_statement += (
                                        f"WHEN {variable_name} IS NULL THEN NULL \n"
                                    )

                            sql_case_statement += f"ELSE SAFE_CAST({variable_name} AS {output_data_type}) \n"

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
                        pass

                    if variable_definition:
                        variable_definitions.append(variable_definition)
    return component_description, variable_definitions


def generate_sql_file(variable_definitions, table_name, data_df):
    """
    Generates an SQL file from the variable definitions for a specific table.

    Args:
        variable_definitions (list): A list of dictionaries containing variable definitions.
        table_name (str): The name of the table for which the SQL file is being generated.
        data_df (dataframe): Table containing links to documentation files.

    Returns:
        str: A string containing the generated SQL commands.
    """
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
    return sql


def append_to_yaml_schema(
    file_path, table_name, component_description, variable_definitions
):
    """
    Appends information about a table and its columns to an existing YAML schema file.

    Args:
        file_path (str): Path to the YAML schema file.
        table_name (str): Name of the table to append to the schema.
        component_description (str): Description of the table component.
        variable_definitions (list): List of variable definitions for the table columns.
    """
    with open(file_path, "a") as f:
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


def write_stg_sql_file(file_path, table_name):
    """
    Writes a dbt staging SQL file for staging a specific NHANES table.

    Args:
        file_path (str): Path to write the SQL file.
        table_name (str): Name of the table for which the SQL file is being written.
    """
    with open(file_path, "w") as f:
        f.write(f"SELECT * FROM nhanes.{table_name}")


def write_model_sql_file(sql, file_path):
    """
    Writes the bronze-level SQL model to a file.

    Args:
        sql (str): The SQL command(s) to be written to the file.
        file_path (str): The path to the file where the SQL model will be written.
    """
    with open(file_path, "w") as f:
        f.write(sql)


def main():
    """
    Main function to orchestrate the reading, processing, and writing of table schema and SQL files.
    """
    start_time = time.time()
    tables = read_tables()
    write_initial_yaml_schema(SCHEMA_YAML_PATH)

    for table_name in tables:
        if table_name == "nhanes_file_metadata":
            continue

        table_schema = table_schemas[table_name]
        column_type_dict = {d["name"]: d["type"] for d in table_schema}

        try:
            data_df = pd.read_gbq(
                f"""SELECT DISTINCT doc_file_url, start_year, end_year
                FROM nhanes.{table_name}
                WHERE doc_file_url IS NOT NULL
                ORDER BY start_year DESC
                """,
                project_id=PROJECT_ID,
                dialect="standard",
            )

        except Exception as ex:
            print(ex)
            print(table_name)
            raise

        # Further processing...
        component_description, variable_definitions = generate_variable_definitions(
            data_df, table_schema, table_name, column_type_dict
        )
        sql = generate_sql_file(variable_definitions, table_name, data_df)
        if any([n.get("code", None) for n in variable_definitions]) and any(
            [n.get("description", None) for n in variable_definitions]
        ):
            append_to_yaml_schema(
                SCHEMA_YAML_PATH,
                table_name,
                component_description,
                variable_definitions,
            )
        write_stg_sql_file(STG_SQL_PATH + f"stg_{table_name}.sql", table_name)
        write_model_sql_file(sql, BRONZE_SQL_PATH + f"{table_name}.sql")
        logging.info(f"Finished SQL generation for {table_name}")

    logging.info(f"Entire process took {time.time() - start_time} seconds")


if __name__ == "__main__":
    main()
