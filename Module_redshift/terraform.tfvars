cluster_identifier        = "my-redshift-cluster"
node_type                 = "dc2.large"
master_username           = "myredshiftadmin"
master_password           = "MySecurePassword123!"
vpc_security_group_ids    = ["sg-0123456789abcdef", "sg-fedcba9876543210"]
cluster_subnet_group_name = "my-redshift-subnet-group"