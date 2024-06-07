**VPC service**
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
