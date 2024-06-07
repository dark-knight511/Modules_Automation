1.VPC service
->Initially creating variables file for the listed paramters below
1.VPC_id
2.public_subnetid
3.private_subnetid
4.Name_tags
->The above attributes declaration , are not mandatory to create a VPC , it can be assigned by default.and applying provider to aws.
->Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
->check through terraform output command to know the outputs acquired after apply.
---------------------------------------------------------------------------------------------------------------------------
2.Opensearch service
->Initially creating variables file for the listed paramters below
1.domain_name(required)
2.elastic_search_version(required)
3.cluster_config(required)
4.ebs_options(required)
5.access_policies(required)
6.engine-version
7.instance_type
8.instance_count
9.ebs_volume_size
10.name_tags
->The domain_name is mandatory for user to create and reamaining all can be assigned by default.
->Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
->check through terraform output command to know the outputs acquired after apply.
-----------------------------------------------------------------------------------------------------------------------------
3.Secrets manager
->Initially creating variables file for the listed paramters below
1.secret_name
2.secret_value(required)
3.name_tags
->This service aids to maintain secrets and its mandatory to pass value to store our secret.
->Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
->check through terraform output command to know the outputs acquired after apply.
-------------------------------------------------------------------------------------------------------------------------------
4.Config
->Initially creating variables file for the listed paramters below
1.recorder_name
2.role_name(required)
3.rule_name(required)
->The role should have permissions to interact with the resources it monitors and the services it uses to deliver configuration data.
->The name attribute for AWS Config rules is mandatory, must provide a unique name for each rule create.
->Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
->check through terraform output command to know the outputs acquired after apply.
-----------------------------------------------------------------------------------------------------------------------------------


