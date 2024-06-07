provider "aws" {
    region = "us-east-1"
}

# Create the AWS Config Configuration Recorder
resource "aws_config_configuration_recorder" "config_recorder" {
  name     = var.config_recorder_name
  role_arn = aws_iam_role.config_role.arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }
}

# Create the IAM Role for AWS Config
resource "aws_iam_role" "config_role" {
  name               = var.config_role_name
  assume_role_policy = data.aws_iam_policy_document.config_role_policy.json
}

data "aws_iam_policy_document" "config_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]
    }
  }
}

# Attach the AWS Config Managed Policy to the IAM Role
resource "aws_iam_role_policy_attachment" "config_role_policy_attachment" {
  role       = aws_iam_role.config_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSConfigRole"
}

# Create an AWS Config Rule for S3 Bucket Versioning
resource "aws_config_config_rule" "s3_bucket_versioning_enabled" {
  name = var.config_rule_name
  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_VERSIONING_ENABLED"
  }

  depends_on = [aws_config_configuration_recorder.config_recorder]
}

# Set the AWS Config Configuration Recorder status to start recording
resource "aws_config_configuration_recorder_status" "config_recorder_status" {
  name       = aws_config_configuration_recorder.config_recorder.name
  is_enabled = true
  depends_on = [aws_config_configuration_recorder.config_recorder]
}
# Create the AWS Config Delivery Channel
resource "aws_config_delivery_channel" "config_delivery_channel" {
  name           = "my-config-delivery-channel"
  s3_bucket_name = aws_s3_bucket.config_bucket.id

  snapshot_delivery_properties {
    delivery_frequency = "Six_Hours"
  }

  depends_on = [aws_config_configuration_recorder.config_recorder]
}

# Create the S3 Bucket for AWS Config
resource "aws_s3_bucket" "config_bucket" {
  bucket        = "my-config-bucket" # Replace with your desired bucket name
  force_destroy = true
}
