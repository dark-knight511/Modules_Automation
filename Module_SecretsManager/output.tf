output "secret_arn" {
  description = "The ARN of the created secret"
  value       = aws_secretsmanager_secret.example_secret.arn
}

output "secret_id" {
  description = "The ID of the created secret"
  value       = aws_secretsmanager_secret.example_secret.id
}

output "secret_name" {
  description = "The name of the created secret"
  value       = aws_secretsmanager_secret.example_secret.name
}