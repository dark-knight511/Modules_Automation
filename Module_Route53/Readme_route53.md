**Route53**
->Initially declare variables.tf file for it, with the listed parameters below
1.zone_name: The name of the hosted zone (e.g., "example.com").(required)
2.zone_comment: A comment for the hosted zone.(optional)
3.zone_delegation_set_id:used for reusability.(optional)
4.record_name(required)
5.record_type(required)
6.record_ttl(required)
7.record_values(optional)
8.name_tags(required)
9.alias(name,zoneid)   
>Apply terraform fmt to adjust the formatting.
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors.
->check through terraform output command to know the outputs acquired after apply.
