variable "secret_name" {
  description = "Name of the secret"
  type        = string
  default     = "example-secret"
}

variable "secret_value" {
  description = "Value of the secret to be stored "
  type        = string
  sensitive   = true
}
