provider "aws" {
  region = "us-east-1"
}

resource "aws_config_configuration_recorder" "example" {
  name     = var.config_recorder_name
  role_arn = var.role_arn

  recording_group {
    all_supported = true
    include_global_resource_types = true
  }
}

resource "aws_config_delivery_channel" "example" {
  name           = "default"
  s3_bucket_name = var.s3_bucket_name

  depends_on = [aws_config_configuration_recorder.example]

  sns_topic_arn = var.sns_topic_arn
}

resource "aws_config_configuration_recorder_status" "example" {
  name     = aws_config_configuration_recorder.example.name
  is_enabled = true
}
