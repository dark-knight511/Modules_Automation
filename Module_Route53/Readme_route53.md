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
