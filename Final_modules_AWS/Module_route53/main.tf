provider "aws" {
  region = "us-east-1"
}

module "route53" {
  source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_Route53"

  zone_name                  = var.zone_name
  zone_comment               = var.zone_comment
  zone_delegation_set_id     = var.zone_delegation_set_id
  record_name                = var.record_name
  record_type                = var.record_type
  record_ttl                 = var.record_ttl
  record_values              = var.record_values
  alias_name                 = var.alias_name
  alias_zone_id              = var.alias_zone_id
  alias_evaluate_target_health = var.alias_evaluate_target_health
  name_tags                  = var.name_tags
}