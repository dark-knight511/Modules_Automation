module "opensearch" {
  source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_opensearch"

  domain_name     = var.domain_name
  engine_version  = var.engine_version
  instance_type   = var.instance_type
  instance_count  = var.instance_count
  ebs_enabled     = var.ebs_enabled
  volume_type     = var.volume_type
  volume_size     = var.volume_size
  access_policies = var.access_policies
  region          = var.region
  name_tags       = var.name_tags
}

provider "aws" {
  region = var.region
}

