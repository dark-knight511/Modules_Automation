variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "notebook_instance_name" {
  description = "Name of the SageMaker Notebook Instance"
  type        = string
  default     = "my-notebook-instance"
}

variable "notebook_instance_type" {
  description = "Instance type for the SageMaker Notebook Instance"
  type        = string
  default     = "ml.t2.medium"
}

variable "role_arn" {
  description = "ARN of the IAM role for SageMaker"
  type        = string
  default     = "" # Leave empty to create a new role
}

variable "model_name" {
  description = "Name of the SageMaker Model"
  type        = string
  default     = "my-model"
}

variable "model_image_uri" {
  description = "URI of the Docker image containing the model artifacts"
  type        = string
  default     = "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model-image:latest"
}

variable "endpoint_config_name" {
  description = "Name of the SageMaker Endpoint Configuration"
  type        = string
  default     = "my-endpoint-config"
}

variable "endpoint_instance_type" {
  description = "Instance type for the SageMaker Endpoint"
  type        = string
  default     = "ml.t2.medium"
}

variable "endpoint_name" {
  description = "Name of the SageMaker Endpoint"
  type        = string
  default     = "my-endpoint"
}

variable "name_tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default = {
    Environment  = "production"
    Team         = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }
}

variable "ami_id" {
  description = "AMI ID for the SageMaker Notebook Instance"
  type        = string
  default     = "ami-0c94855ba95c71c99" # Example AMI ID (replace with your desired AMI ID)
}

variable "vpc_id" {
  description = "ID of the VPC to create resources in"
  type        = string
  default = "vpc-id"
}

variable "subnet_id" {
  description = "ID of the subnet to create resources in"
  type        = string
  default = "subnet-id"
}

variable "volume_size" {
  description = "Volume size (in GB) for the SageMaker Notebook Instance"
  type        = number
  default     = 50
}

variable "initial_instance_count" {
  description = "Initial instance count for the SageMaker Endpoint"
  type        = number
  default     = 1
}

variable "policy_arn" {
  description = "Policy for IAM role"
  type        = string
  default     = "" 
}

variable "role_name" {
  description = "Name of the IAM role for SageMaker"
  type        = string
  default     = "role-1" 
}

variable "variant_name" {
  description = "Name of the SageMaker Variant"
  type        = string
  default     = "variant-1" 
}

variable "name_prefix" {
  description = "Name prefix for the SageMaker Variant"
  type        = string
  default     = "sagemaker-"
}
