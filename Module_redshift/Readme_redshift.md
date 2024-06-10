**Redshift**
->Initially create a variables file where we declare the varibales listed below
1.cluster_identifier(Required)
2.node_type(Required)
3.number_of_nodes
4.master_username(Required)
5.master_password(Required)
6.vpc_security_group_ids
7.cluster_subnet_group_name
8.name_tags
->Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file 
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors. 
->check through terraform output command to know the outputs acquired after apply.
