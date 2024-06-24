
module "sagemaker" {
  source = "git::https://github.com/dark-knight511/Modules_Automation//Module_sagemaker"

  region                   = var.region
  notebook_instance_name   = var.notebook_instance_name
  notebook_instance_type   = var.notebook_instance_type
  role_arn                 = var.role_arn
  model_name               = var.model_name
  model_image_uri          = var.model_image_uri
  endpoint_config_name     = var.endpoint_config_name
  endpoint_instance_type   = var.endpoint_instance_type
  endpoint_name            = var.endpoint_name
  name_tags                = var.name_tags
  ami_id                   = var.ami_id
  vpc_id                   = var.vpc_id
  subnet_id                = var.subnet_id
  volume_size              = var.volume_size
  initial_instance_count   = var.initial_instance_count
  policy_arn               = var.policy_arn
  role_name                = var.role_name
  variant_name             = var.variant_name
  name_prefix              = var.name_prefix
}
