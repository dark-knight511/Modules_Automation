provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_zone" "example" {
  name              = var.zone_name
}

resource "aws_route53_record" "record" {
  for_each = { for idx, val in var.record_values : idx => val }
  zone_id  = aws_route53_zone.example.zone_id
  name     = var.record_name
  type     = var.record_type
  ttl      = var.record_ttl
  records  = [each.value]
}
