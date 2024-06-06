output "opensearch_domain_endpoint" {
  description = "The endpoint for the OpenSearch domain"
  value       = aws_opensearch_domain.opensearch_domain.endpoint
}

output "opensearch_domain_arn" {
  description = "The ARN of the OpenSearch domain"
  value       = aws_opensearch_domain.opensearch_domain.arn
}

output "opensearch_domain_id" {
  description = "The ID of the OpenSearch domain"
  value       = aws_opensearch_domain.opensearch_domain.domain_id
}

output "opensearch_domain_name" {
  description = "The name of the OpenSearch domain"
  value       = aws_opensearch_domain.opensearch_domain.domain_name
}