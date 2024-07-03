
locals {
  records = {
    for key, value in var.route53_records : "${value.name}" => {
      name    = value.name
      type    = value.type
      ttl     = value.ttl
      records = value.records
      alias   = {
        name                   = value.alias_name
        zone_id                = value.alias_zone_id
        evaluate_target_health = value.alias_evaluate_target_health
      }
    }
  }
}

resource "aws_route53_record" "records" {
  for_each = local.records

  zone_id = var.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.records

  dynamic "alias" {
    for_each = can(index(each.value, "alias")) ? [each.value.alias] : []

    content {
      name                   = alias.value.name
      zone_id                = alias.value.zone_id
      evaluate_target_health = alias.value.evaluate_target_health
    }
  }
}
