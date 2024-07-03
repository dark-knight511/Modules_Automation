locals {
  records = { for k, v in var.route53_records : v.name => "${var.zone_id}.${v.name}" }
}

resource "aws_route53_record" "records" {
  for_each = var.route53_records

  zone_id = var.zone_id
  name    = local.records[each.key]  # Use local variable records for the name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.records

  dynamic "alias" {
    for_each = can(index(each.value, "alias_name")) && can(index(each.value, "alias_zone_id")) && can(index(each.value, "alias_evaluate_target_health")) ? [each.value] : []

    content {
      name                   = alias.value.alias_name
      zone_id                = alias.value.alias_zone_id
      evaluate_target_health = alias.value.alias_evaluate_target_health
    }
  }
}
