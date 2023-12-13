import { Construct } from "constructs";
import { App, TerraformStack, TerraformOutput, GcsBackend } from "cdktf";
import { GoogleProvider } from "@cdktf/provider-google/lib/provider";
import { serviceApis } from "./util";
import { StorageBucket } from "@cdktf/provider-google/lib/storage-bucket";
import { BigqueryDataset } from "@cdktf/provider-google/lib/bigquery-dataset";
import { ComputeNetwork } from "@cdktf/provider-google/lib/compute-network";
import { ServiceAccount } from "@cdktf/provider-google/lib/service-account";
import { ProjectIamMember } from "@cdktf/provider-google/lib/project-iam-member";
import { ComputeInstance } from "@cdktf/provider-google/lib/compute-instance";
import { ComputeFirewall} from "@cdktf/provider-google/lib/compute-firewall";
import { StorageHmacKey } from "@cdktf/provider-google/lib/storage-hmac-key";
import { readFileSync } from "fs";
// import { RandomProvider } from "@cdktf/provider-random/lib/provider";
// import {  id } from "@cdktf/provider-random";






// Create main stack class
class nhanes extends TerraformStack {
  constructor(scope: Construct, id: string) {
    super(scope, id);

    const projectId = 'corrdyn-nhanes';
    // const region = 'us-central1';
    const postfix = '001';
    const prefix = 'poc'
    // define resources here
    const google = new GoogleProvider(this, "Google", {
      region: "us-central1",
      zone: "us-central1-c",
      project: projectId,
    });


    serviceApis(this, google, [
      ["secret-manager-api", "secretmanager.googleapis.com"],
      // ["cloud-resource-manager-api", "cloudresourcemanager.googleapis.com"],
      ["resourcemanager-api", "cloudresourcemanager.googleapis.com"],
      ["compute-api", "compute.googleapis.com"],
      ["iam-api", "iam.googleapis.com"],
      ["bigquery-reservations-api", "bigqueryreservation.googleapis.com"],
      
    ]);


  //  new RandomProvider(this, "randomId", {});
  
  //   // Create a unique ID
  //  const uniqueId = new id.RandomId(this, "uniqueId", {
  //     byteLength: 8,
  //   });


    new StorageBucket(this, "storageBucket", {
      name: `${prefix}-storage-bucket-nhanes-${postfix}`,
      location: "US",
      forceDestroy: true,
    });

    new BigqueryDataset(this, "dataset", {
      datasetId: "nhanes",
      location: "US",
    });

    const computeNetwork = new ComputeNetwork(this, "network", {
      name: "pilot-nhanes-network",


    });

    new ComputeFirewall(this, "IAPFirewallRule", {
      name: "pilot-nhanes-firewall-iap",
      network: computeNetwork.name,
      sourceRanges: ['35.235.240.0/20'],
      allow: [
        {
          protocol: "tcp",
          ports: ["22"],
        },
      ],
    });


    const serviceAccounts = [
      { accountId: 'pilot-nhanes-compute-sa', displayName: 'pilot-nhanes-compute-sa' },
      { accountId: 'pilot-nhanes-data-hmac-sa', displayName: 'pilot-nhanes-data-hmac-sa' },
      // Add more service accounts as needed
    ];

    // Create each service account from the list
    
    const createdServiceAccounts = serviceAccounts.map((saConfig, index) => {
        return new ServiceAccount(this, `ServiceAccount${index}`, {
          accountId: saConfig.accountId,
          displayName: saConfig.displayName,
        });
      });

    const storageHMACkey = new StorageHmacKey(this, 'storageHMACkey', {
        serviceAccountEmail: createdServiceAccounts[1].email,
        });
    
    new ProjectIamMember(this, 'BigQueryDatasetIamHmac', {
      role: 'roles/bigquery.dataViewer',
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
    
    // new SecretManagerSecret(this, 'DuckDBSecret', {
    //   secretId: 'gcs-data-view-secret',
    //   replication: {automatic : true},
    // });
    // new SecretManagerSecret(this, 'DuckDBSecret', {
    //   secretId: 'gcs-data-view-secret',
    //   replication: {
    //     automatic: true,
    //   },
    // });
    // Grant BigQuery Dataset Owner role
    new ProjectIamMember(this, 'BigQueryDatasetIam', {
      role: 'roles/bigquery.dataOwner',
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, 'ComputeIam', {
      role: 'roles/compute.admin',
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
    });

    new ProjectIamMember(this, 'gcsIam', {
      role: 'roles/storage.admin',
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
      });

    new ProjectIamMember(this, 'serviceAccountIam', {
      role: 'roles/iam.serviceAccountUser',
      member: `serviceAccount:${createdServiceAccounts[0].email}`,
      project: projectId,
      });

    // Read local payload file for compute instance startup script
    const fileContents = readFileSync('/Users/abdul/Documents/wip/code/repos/NHANES-GPT/infra/startup-script.sh', 'utf8');

      new ComputeInstance(this, "ComputeInstance", {
        name: "p1-nhanes-compute-instance",
        machineType: "f1-micro",
        bootDisk: {
          initializeParams: {
            image: "ubuntu-os-cloud/ubuntu-2204-lts"
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
          scopes: ['cloud-platform'],
      },
      // metadata:
      //   {
      //     'startup-script': fileContents,
      //   },
      metadataStartupScript: fileContents,
      dependsOn: [computeNetwork],
      });


  }
}



const app = new App();
const stack = new nhanes(app, "pilot-nhanes");
new GcsBackend(stack, {
 bucket: "tf-state-gcs-nhanes-001",
 prefix: "terraform/state",
});

app.synth();