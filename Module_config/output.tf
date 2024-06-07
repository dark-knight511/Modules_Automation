output "config_recorder_id" {
  description = "The ID of the AWS Config Configuration Recorder"
  value       = aws_config_configuration_recorder.config_recorder.id
}

output "config_role_arn" {
  description = "The ARN of the IAM role for AWS Config"
  value       = aws_iam_role.config_role.arn
}

output "config_rule_id" {
  description = "The ID of the AWS Config Rule for S3 bucket versioning"
  value       = aws_config_config_rule.s3_bucket_versioning_enabled.id
}