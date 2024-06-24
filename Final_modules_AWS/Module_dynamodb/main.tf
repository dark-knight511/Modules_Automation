provider "aws" {
    region = var.region
}
module "dynamodb" {
    source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_dynamoDB"
    table_name                  = var.table_name
  billing_mode                = var.billing_mode
  hash_key                    = var.hash_key
  range_key                   = var.range_key
  attributes                  = var.attributes
  ttl_attribute_name          = var.ttl_attribute_name
  ttl_enabled                 = var.ttl_enabled
  gsi_name                    = var.gsi_name
  gsi_hash_key                = var.gsi_hash_key
  gsi_range_key               = var.gsi_range_key
  gsi_projection_type         = var.gsi_projection_type
  gsi_non_key_attributes      = var.gsi_non_key_attributes
  name_tags                   = var.name_tags
}