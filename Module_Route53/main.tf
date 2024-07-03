locals {
  record_names = [for key, value in var.route53_records : key]
}

resource "aws_route53_record" "records" {
  for_each = { for idx, record_name in local.record_names : record_name => var.route53_records[record_name] }

  zone_id = var.zone_id
  name    = each.key
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.records

  dynamic "alias" {
    for_each = each.value.alias_name != null && each.value.alias_zone_id != null && each.value.alias_evaluate_target_health != null ? [each.value] : []
    content {
      name                   = alias.value.alias_name
      zone_id                = alias.value.alias_zone_id
      evaluate_target_health = alias.value.alias_evaluate_target_health
    }
  }
}
