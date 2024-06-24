provider "aws" {
  region = "us-east-1"
}
module "secrets_manager" {
  source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_SecretsManager"
  secret_name     = var.secret_name
  secret_string   = var.secret_string
  kms_key_id      = var.kms_key_id
  tags            = var.tags
  rotation_enabled = var.rotation_enabled
  rotation_days    = var.rotation_days
  replica_regions  = var.replica_regions
}
