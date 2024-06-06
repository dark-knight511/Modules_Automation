provider "aws" {
  region = var.aws_region
}

resource "aws_opensearch_domain" "opensearch_domain" {
  domain_name    = var.domain_name
  engine_version = var.engine_version

  cluster_config {
    instance_type       = var.instance_type
    instance_count      = var.instance_count
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.ebs_volume_size
  }

  tags = var.search_name_tags

}

output "opensearch_domain_endpoint" {
  value = aws_opensearch_domain.opensearch_domain.endpoint
}