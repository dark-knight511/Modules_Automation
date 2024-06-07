provider "aws" {
  region = var.region
}

resource "aws_iam_role" "opensearch_role" {
  name = "${var.domain_name}-opensearch-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "opensearchservice.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "opensearch_policy" {
  name = "${var.domain_name}-opensearch-policy"
  role = aws_iam_role.opensearch_role.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "es:ESHttp*",
          "es:Describe*",
          "es:List*",
          "es:ESHttpPut",
          "es:ESHttpPost",
          "es:ESHttpDelete"
        ],
        Resource = "*"
      }
    ]
  })
}

resource "aws_opensearch_domain" "example" {
  domain_name    = var.domain_name
  engine_version = var.engine_version

  cluster_config {
    instance_type  = var.instance_type
    instance_count = var.instance_count
  }

  ebs_options {
    ebs_enabled = var.ebs_enabled
    volume_type = var.volume_type
    volume_size = var.volume_size
  }

  access_policies = var.access_policies
  tags = var.name_tags
}
