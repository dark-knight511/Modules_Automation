
variable "notebook_instance_name" {
  description = "Name of the SageMaker Notebook Instance"
  type        = string
  #   default     = "my-notebook-instance"
}

variable "notebook_instance_type" {
  description = "Instance type for the SageMaker Notebook Instance"
  type        = string
  #   default     = "ml.t3.medium"
}

variable "role_arn" {
  description = "ARN of the IAM role for SageMaker"
  type        = string
}

variable "model_name" {
  description = "Name of the SageMaker Model"
  type        = string
  #   default     = "my-model"
}

variable "model_image_uri" {
  description = "URI of the Docker image containing the model artifacts"
  type        = string
}

variable "endpoint_config_name" {
  description = "Name of the SageMaker Endpoint Configuration"
  type        = string
  #   default     = "my-endpoint-config"
}

variable "endpoint_instance_type" {
  description = "Instance type for the SageMaker Endpoint"
  type        = string
  #   default     = "ml.m5.large"
}

variable "endpoint_name" {
  description = "Name of the SageMaker Endpoint"
  type        = string
  #   default     = "my-endpoint"
}

variable "name_tags" {
  description = "Tags to apply to the Secrets Manager secret"
  type        = map(string)
  default = {
    Environment  = "production"
    Team         = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }
}