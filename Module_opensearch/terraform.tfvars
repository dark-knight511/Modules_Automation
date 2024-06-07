domain_name     = "example-opensearch-domain"
engine_version  = "OpenSearch_1.0" # Replace with the desired version
instance_type   = "m5.large.search"
instance_count  = 3
ebs_enabled     = true
volume_type     = "gp2"
volume_size     = 10
access_policies = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "es:*",
      "Resource": "arn:aws:es:us-west-2:123456789012:domain/example-opensearch-domain/*"
    }
  ]
}
EOF
