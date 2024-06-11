provider "aws" {
  region = "us-east-1"
}


resource "aws_secretsmanager_secret" "example" {
  name       = var.secret_name
  kms_key_id = var.kms_key_id
  tags = var.tags
}


resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.example.id
  secret_string = var.secret_string
}
