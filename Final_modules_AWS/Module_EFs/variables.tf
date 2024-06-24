variable "region" {
  description = "The AWS region where the resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "creation_token" {
  description = "A unique, case-sensitive string provided by the client to ensure idempotent creation."
  type        = string
  default     = "my-unique-token"
}

variable "performance_mode" {
  description = "Specifies the performance mode of the file system. Valid values are generalPurpose and maxIO."
  type        = string
  default     = "generalPurpose"
}

variable "throughput_mode" {
  description = "Specifies the throughput mode for the file system. Valid values are bursting, provisioned, and elastic."
  type        = string
  default     = "elastic"
}

variable "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, for the file system. This is used only when ThroughputMode is set to provisioned."
  type        = number
  default     = 0
}

variable "encrypted" {
  description = "A Boolean value that, if true, creates an encrypted file system."
  type        = bool
  default     = false
}

variable "kms_key_id" {
  description = "The ID of the AWS KMS key to be used for encryption. This is required if encryption is enabled."
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "A list of subnet IDs to create mount targets in."
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the mount targets."
  type        = list(string)
  default     = []
}

variable "name_tags" {
  description = "Tags to be applied on the naming of the Config."
  type        = map(string)
  default = {
    Name         = "my-EFS"
    env          = "dev"
    team         = "devops"
    owner        = "owner name"
    owneremail   = "owner@mail.com"
    creationdate = "06-06-2024"
  }
}
