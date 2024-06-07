variable "config_recorder_name" {
  description = "The name of the AWS Config recorder"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role that AWS Config uses to record configurations"
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for AWS Config"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the SNS topic for AWS Config notifications"
  type        = string
  default     = null
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