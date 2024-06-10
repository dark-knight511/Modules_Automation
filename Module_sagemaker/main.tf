provider "aws" {
  region = "us-east-1"
}

resource "aws_sagemaker_notebook_instance" "notebook_instance" {
  name                  = var.notebook_instance_name
  role_arn              = var.role_arn
  instance_type         = var.notebook_instance_type
  tags                  = var.name_tags
}

resource "aws_sagemaker_model" "model" {
  name               = var.model_name
  execution_role_arn = var.role_arn
  tags               = var.name_tags

  primary_container {
    image = var.model_image_uri
  }
}

resource "aws_sagemaker_endpoint_configuration" "endpoint_config" {
  name = var.endpoint_config_name
  tags = var.name_tags

  production_variants {
    initial_instance_count = 1
    instance_type          = var.endpoint_instance_type
    model_name             = aws_sagemaker_model.model.name
    variant_name           = "variant-1"
  }
}

resource "aws_sagemaker_endpoint" "endpoint" {
  name                 = var.endpoint_name
  endpoint_config_name = aws_sagemaker_endpoint_configuration.endpoint_config.name
  tags                 = var.name_tags
}