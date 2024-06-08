**DynamoDB**
->Initially create variables.tf file and decalre the below variables
1.table_name (name of the DynamoDB table)
2.billing_mode (specifies the billing mode)
3.read_capacity (when billing_mode is PROVISIONED)
4.write_capacity (when billing_mode is PROVISIONED)
5.hash_key (partition key)
6.range_key (sort key)
7.attributes (at least one attribute must be defined, specifically the attributes used as keys)
8.ttl_attribute_name
9.ttl_enabled
10.gsi_name
11.gsi_hash_key
12.gsi_range_key
13.gsi_read_capacity
14.gsi_write_capacity
15.gsi_projection_type
16.gsi_non_key_attributes
