variable "secret_name" {
  description = "Name of the secret to be created in AWS Secrets Manager"
  type        = string
  default     = "example-secret"
}

variable "secret_value" {
  description = "Value of the secret to be stored in AWS Secrets Manager"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags to apply to the Secrets Manager secret"
  type        = map(string)
  default = {
    Environment = "production"
    Team        = "devops"
    Application = "my-app"
  }
}
