variable "domain_name" {
  description = "The domain name to create a hosted zone for"
  type        = string
}

variable "subdomain" {
  description = "The subdomain to create a record for"
  type        = string
}

variable "alb_dns_name" {
  description = "DNS name of the ALB"
  type        = string
}

variable "alb_zone_id" {
  description = "Zone ID of the ALB"
  type        = string
}
