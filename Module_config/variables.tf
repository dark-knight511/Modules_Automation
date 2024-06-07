variable "config_recorder_name" {
  description = "Name of the AWS Config Configuration Recorder"
  default     = "my-config-recorder"
}

variable "config_role_name" {
  description = "Name of the IAM role for AWS Config"
  default     = "config-role"
}

variable "config_rule_name" {
  description = "Name of the AWS Config Rule for S3 bucket versioning"
  default     = "s3-bucket-versioning-enabled"
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