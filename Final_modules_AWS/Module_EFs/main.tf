
provider "aws" {
  region = var.region
}

module "efs" {
  source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_EFS"

  creation_token                  = var.creation_token
  performance_mode                = var.performance_mode
  throughput_mode                 = var.throughput_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  encrypted                       = var.encrypted
  kms_key_id                      = var.kms_key_id
  subnet_ids                      = var.subnet_ids
  security_group_ids              = var.security_group_ids
  name_tags                       = var.name_tags
}
