provider "aws" {
  region = var.aws_region
}

resource "aws_sns_topic" "ec2_notifications" {
  name = var.sns_topic_name

  tags = var.name_tags
}

resource "aws_sns_topic_subscription" "ec2_notifications_subscription" {
  topic_arn = aws_sns_topic.ec2_notifications.arn
  protocol  = var.protocol_type
  endpoint  = var.sns_topic_email
}

resource "aws_config_configuration_recorder" "example" {
  name     = var.config_recorder_name
  role_arn = var.role_arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }

}

resource "aws_config_delivery_channel" "example" {
  name           = var.delivery_channel_name
  s3_bucket_name = var.s3_bucket_name
  sns_topic_arn  = aws_sns_topic.ec2_notifications.arn
}

resource "aws_config_configuration_recorder_status" "example" {
  name      = aws_config_configuration_recorder.example.name
  is_enabled = true
}

