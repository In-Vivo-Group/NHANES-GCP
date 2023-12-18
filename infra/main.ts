import { Construct } from "constructs";
import { App, TerraformStack, TerraformOutput } from "cdktf";
import { GoogleProvider } from "@cdktf/provider-google/lib/provider";
import { serviceApis } from "./util";
import { StorageBucket } from "@cdktf/provider-google/lib/storage-bucket";
import { BigqueryDataset } from "@cdktf/provider-google/lib/bigquery-dataset";
import { ComputeNetwork } from "@cdktf/provider-google/lib/compute-network";
import { ServiceAccount } from "@cdktf/provider-google/lib/service-account";
import { ProjectIamMember } from "@cdktf/provider-google/lib/project-iam-member";
import { ComputeInstance } from "@cdktf/provider-google/lib/compute-instance";
import { ComputeFirewall } from "@cdktf/provider-google/lib/compute-firewall";
import { StorageHmacKey } from "@cdktf/provider-google/lib/storage-hmac-key";
import { readFileSync } from "fs";
import { SecretManagerSecret } from "@cdktf/provider-google/lib/secret-manager-secret";
import { SecretManagerSecretVersion } from "@cdktf/provider-google/lib/secret-manager-secret-version";

// Create main stack class
class nhanes extends TerraformStack {
  constructor(scope: Construct, id: string) {
    super(scope, id);

    const projectId = "corrdyn-nhanes";
    // const region = 'us-central1';
    const prefix = "poc";

    // define resources here
    const google = new GoogleProvider(this, "Google", {
      region: "us-central1",
      zone: "us-central1-c",
      project: projectId,
    });

    serviceApis(this, google, [
      ["secret-manager-api", "secretmanager.googleapis.com"],
      ["resourcemanager-api", "cloudresourcemanager.googleapis.com"],
      ["compute-api", "compute.googleapis.com"],
      ["iam-api", "iam.googleapis.com"],
      ["bigquery-reservations-api", "bigqueryreservation.googleapis.com"],
    ]);

    new StorageBucket(this, "storageBucket", {
      // Bucket is created with a random name to avoid conflicts
      name: `${prefix}-storage-bucket-nhanes-${Math.random()
        .toString(36)
        .substring(2, 15)}`,
      location: "US",
      forceDestroy: true,
    });

    new BigqueryDataset(this, "dataset", {
      datasetId: "nhanes",
      location: "US",
      deleteContentsOnDestroy: true,
    });

    const computeNetwork = new ComputeNetwork(this, "network", {
      name: `${prefix}-nhanes-network`,
    });

    new ComputeFirewall(this, "IAPFirewallRule", {
      name: `${prefix}-nhanes-firewall-iap`,
      network: computeNetwork.name,
      sourceRanges: ["35.235.240.0/20"],
      allow: [
        {
          protocol: "tcp",
          ports: ["22"],
        },
      ],
    });

    // Create service account from list
    const serviceAccounts = [
      {
        accountId: `${prefix}-nhanes-compute-sa`,
        displayName: `${prefix}-nhanes-compute-sa`,
      },
      {
        accountId: `${prefix}-nhanes-data-hmac-sa`,
        displayName: `${prefix}-nhanes-data-hmac-sa`,
      },
    ];

    // Create each service account from the list

    const createdServiceAccounts = serviceAccounts.map((saConfig, index) => {
      return new ServiceAccount(this, `ServiceAccount${index}`, {
        accountId: saConfig.accountId,
        displayName: saConfig.displayName,
      });
    });

    const storageHMACkey = new StorageHmacKey(this, "storageHMACkey", {
      serviceAccountEmail: createdServiceAccounts[1].email,
    });

    new ProjectIamMember(this, "BigQueryDatasetIamHmacRW", {
      role: "roles/bigquery.dataOwner",
      member: `serviceAccount:${createdServiceAccounts[1].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "BigQueryDatasetIamHmacRO", {
      role: "roles/bigquery.dataViewer",
      member: `serviceAccount:${createdServiceAccounts[1].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "SecretManagerAccessorApplication", {
      role: "roles/secretmanager.secretAccessor",
      member: `serviceAccount:${createdServiceAccounts[1].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "BigQueryJobssetIamApp", {
      role: "roles/bigquery.jobUser",
      member: `serviceAccount:${createdServiceAccounts[1].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "GoogleStorageViewer", {
      role: "roles/storage.objectViewer",
      member: `serviceAccount:${createdServiceAccounts[1].email}`,
      project: projectId,
    });

    new TerraformOutput(this, "HMACAccessKey", {
      value: storageHMACkey.secret,
      sensitive: true,
    });

    new TerraformOutput(this, "HMACAccessSecret", {
      value: storageHMACkey.accessId,
      sensitive: true,
    });
    // Create Secret Manager Secrets
    const HmacAccessSecret = new SecretManagerSecret(this, "AccessKey", {
      secretId: "duckdbaccesskey",
      replication: {
        userManaged: {
          replicas: [{ location: "us-central1" }],
        },
      },
    });

    const HmacAccessId = new SecretManagerSecret(this, "AccessSecret", {
      secretId: "duckdbaccessid",
      replication: {
        userManaged: {
          replicas: [{ location: "us-central1" }],
        },
      },
    });

    new SecretManagerSecretVersion(this, "HmacAccessSecret", {
      secret: HmacAccessSecret.id,
      secretData: storageHMACkey.secret,
    });

    new SecretManagerSecretVersion(this, "HmacAccessID", {
      secret: HmacAccessId.id,
      secretData: storageHMACkey.accessId,
    });

    // Grant BigQuery Dataset Owner role
    new ProjectIamMember(this, "BigQueryDatasetIam", {
      role: "roles/bigquery.dataOwner",
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });
    new ProjectIamMember(this, "BigQueryJobssetIamCompute", {
      role: "roles/bigquery.jobUser",
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });
    new ProjectIamMember(this, "ComputeIam", {
      role: "roles/compute.admin",
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "gcsIam", {
      role: "roles/storage.admin",
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "serviceAccountIam", {
      role: "roles/iam.serviceAccountUser",
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, "SecretManagerAccessorCompute", {
      role: "roles/secretmanager.secretAccessor",
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });

    // Read local payload file for compute instance startup script
    const fileContents = readFileSync("./startup-script.sh", "utf8");

    new ComputeInstance(this, "ComputeInstance", {
      name: "p1-nhanes-compute-instance",
      machineType: "e2-highmem-4",
      bootDisk: {
        initializeParams: {
          image: "ubuntu-os-cloud/ubuntu-2204-lts",
        },
      },

      networkInterface: [
        {
          network: computeNetwork.name,
          accessConfig: [{}],
        },
      ],
      tags: ["cdktf", "processornode"],
      serviceAccount: {
        email: createdServiceAccounts[0].email,
        scopes: ["cloud-platform"],
      },
      metadataStartupScript: fileContents,
      dependsOn: [computeNetwork],
    });
  }
}

const app = new App();
new nhanes(app, "pilot-nhanes");
app.synth();
