resource "aws_route53_record" "dns_record" {
  zone_id = "Z054746681O6Z0K38AC7" # Use the exact Hosted Zone ID
  name    = var.subdomain != "" ? "${var.subdomain}.${var.domain_name}" : var.domain_name
  type    = "A"

  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}
