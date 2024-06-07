**Elasticfilesystem**
->Initially creating variables file for the listed paramters below 
1.creation_token(required)
2.performance_mode(required)
3.encrypted(required) 
4.throughput_mode
5.SubnetId
6.SecurityGroups
7.provisioned_throughput_in_mibps
8.kms_key_id
CreationToken: A unique string to ensure idempotent creation.
PerformanceMode: The performance mode of the file system (default is generalPurpose).
Encrypted: Boolean value indicating whether the file system is encrypted (default is false).
->Then apply terraform init for initializing the backend and creating the state file
->Then do terraform apply for applying and recording the changes , where it checks the errors and fixes the errors. 
->check through terraform output command to know the outputs acquired after apply.
