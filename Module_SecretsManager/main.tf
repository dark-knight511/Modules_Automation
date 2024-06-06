provider "aws" {
  region = "us-east-1"
}

resource "aws_secretsmanager_secret" "example_secret" {
  name = var.secret_name
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "example_secret_version" {
  secret_id     = aws_secretsmanager_secret.example_secret.id
  secret_string = var.secret_value
}

