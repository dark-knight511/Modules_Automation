variable "secret_name" {
  description = "The name of the secret"
  type        = string
  default = "Name-of-secret"
}

variable "secret_string" {
  description = "The actual secret data in string form"
  type        = string
  sensitive   = true
  default = "secret-1"
}

variable "kms_key_id" {
  description = "The ID or ARN of the KMS key to use for encrypting the secret (optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to the Secrets Manager secret"
  type        = map(string)
  default = {
    Environment = "production"
    Team        = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }
}

variable "rotation_enabled" {
  description = "Enable automatic rotation of the secret"
  type        = bool
  default     = true
}

variable "rotation_days" {
  description = "Number of days after which the secret will be rotated"
  type        = number
  default     = 7
}

variable "replica_regions" {
  description = "A list of regions where the secret should be replicated"
  type        = list(string)
  default     = []
}
