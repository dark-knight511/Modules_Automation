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
---------------------------------------------------------------------------------------------------------------------------
2.Opensearch service
->Initially creating variables file for the listed paramters below
1.domain_name(required)
2.engine-version
3.instance_type
4.instance_count
5.ebs_volume_size
6.name_tags
->The domain_name is mandatory for user to create and reamaining all can be assigned by default.
->Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
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
-------------------------------------------------------------------------------------------------------------------------------


