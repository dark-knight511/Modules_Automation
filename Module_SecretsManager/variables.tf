variable "secret_name" {
  description = "The name of the secret"
  type        = string
}

variable "secret_string" {
  description = "The actual secret data in string form"
  type        = string
  sensitive   = true
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
