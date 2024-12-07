output "route53_hosted_zone_id" {
  description = "The hosted zone ID"
  value       = module.route53.hosted_zone_id
}

output "route53_dns_record_fqdn" {
  description = "The FQDN of the Route 53 record"
  value       = module.route53.dns_record_fqdn
}
