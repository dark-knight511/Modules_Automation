**Sagemaker**
->Initially declare variables.tf file and define the below params.
1.notebook_instance_name(required)
2.notebook_instance_type(required)
3.role(required)
4.model_name(required)
5.model_image(required)
6.endpoint_config_name(required)
7.endpoint_instance_type(required)
8.endpoint_name(required)
9.name_tags
>Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
->check through terraform output command to know the outputs acquired after apply.
--------------------------------------------------------------------------------------------------------------------------------
