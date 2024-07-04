resource "aws_route53_record" "records" {
  for_each = { for k, v in var.route53_records : k => v if v.alias_name == "" || v.alias_zone_id == "" || v.alias_evaluate_target_health == null }

  zone_id = "Z0465627ZWX"
  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.records
}

resource "aws_route53_record" "alias_records" {
  for_each = { for k, v in var.route53_records : k => v if v.alias_name != "" && v.alias_zone_id != "" && v.alias_evaluate_target_health != null }

  zone_id = "Z0465627ZWX"
  name    = each.value.name
  type    = each.value.type

  alias {
    name                   = each.value.alias_name
    zone_id                = each.value.alias_zone_id
    evaluate_target_health = each.value.alias_evaluate_target_health
  }
}
