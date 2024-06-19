provider "aws" {
  region = var.region
}

# Security Group
resource "aws_security_group" "sagemaker_security_group" {
  name_prefix = var.name_prefix
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = var.name_tags
}

# SageMaker Notebook Instance
resource "aws_sagemaker_notebook_instance" "notebook_instance" {
  name                    = var.notebook_instance_name
  role_arn                = var.role_arn != "" ? var.role_arn : aws_iam_role.sagemaker_role[0].arn
  instance_type           = var.notebook_instance_type
  subnet_id               = var.subnet_id
  volume_size             = var.volume_size
  security_groups         = [aws_security_group.sagemaker_security_group.id]
  tags                    = var.name_tags
}

# IAM Role for SageMaker (conditional)
resource "aws_iam_role" "sagemaker_role" {
  count = var.role_arn == "" ? 1 : 0

  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.sagemaker_assume_role_policy.json
}

data "aws_iam_policy_document" "sagemaker_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["sagemaker.amazonaws.com"]
    }
  }
}

resource "aws_iam_role_policy_attachment" "sagemaker_role_policy_attach" {
  count = var.role_arn == "" ? 1 : 0

  role       = aws_iam_role.sagemaker_role[0].name
  policy_arn = var.policy_arn
}

# Other SageMaker resources
resource "aws_sagemaker_model" "model" {
  name               = var.model_name
  execution_role_arn = var.role_arn != "" ? var.role_arn : aws_iam_role.sagemaker_role[0].arn
  tags               = var.name_tags

  primary_container {
    image = trimspace(var.model_image_uri)
  }
}

resource "aws_sagemaker_endpoint_configuration" "endpoint_config" {
  name = var.endpoint_config_name
  tags = var.name_tags

  production_variants {
    initial_instance_count = var.initial_instance_count
    instance_type          = var.endpoint_instance_type
    model_name             = aws_sagemaker_model.model.name
    variant_name           = var.variant_name
  }
}

resource "aws_sagemaker_endpoint" "endpoint" {
  name                 = var.endpoint_name
  endpoint_config_name = aws_sagemaker_endpoint_configuration.endpoint_config.name
  tags                 = var.name_tags
}