provider "aws" {
  region = "us-east-1"
}

module "route53" {
  source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_Route53"
  zone_name                  = var.zone_name
  record_name                = var.record_name
  record_type                = var.record_type
  record_ttl                 = var.record_ttl
  record_values              = var.record_values
 

}