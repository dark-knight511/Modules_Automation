module "config" {
    source = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_config"
    sns_topic_name        = var.sns_topic_name
  sns_topic_email       = var.sns_topic_email
  protocol_type         = var.protocol_type
  config_recorder_name  = var.config_recorder_name
  role_arn              = var.role_arn
  s3_bucket_name        = var.s3_bucket_name
  delivery_channel_name = var.delivery_channel_name
  name_tags             = var.name_tags
  
}