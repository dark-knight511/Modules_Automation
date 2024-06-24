variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "sns_topic_name" {
  description = "The name of the SNS topic for notifications"
  type        = string
  default     = "EC2-Instance-Events"
}

variable "sns_topic_email" {
  description = "The email address to subscribe to the SNS topic"
  type        = string
  default     = "example@example.com"#sample email desc for sending updates.
}

variable "protocol_type" {
  description = "Type of protocol to be used"
  type        = string
  default     = "email"
}

variable "config_recorder_name" {
  description = "The name of the AWS Config recorder"
  type        = string
  default     = "my-config-recorder"#sample recorder name
}

variable "role_arn" {
  description = "The ARN of the IAM role that AWS Config uses to record configurations"
  type        = string
  default     = "arn:aws:iam::123456789012:role/aws-config-role"#sample role
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for AWS Config"
  type        = string
  default     = "my-config-bucket"
}

variable "delivery_channel_name" {
  description = "Name of the delivery channel"
  type        = string
  default     = "Channel_1"
}

variable "name_tags" {
  description = "Tags to be applied on the naming of the Config"
  type        = map(string)
  default = {
    Name         = "my-config"
    env          = "dev"
    team         = "devops"
    owner        = "owner name"
    owneremail   = "owner@mail.com"
    creationdate = "06-06-2024"
  }
}
