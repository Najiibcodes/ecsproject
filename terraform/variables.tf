variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "CIDR block for the first public subnet"
  default     = "10.0.1.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block for the second public subnet"
  default     = "10.0.2.0/24"
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate"
  default     = "arn:aws:acm:eu-west-2:156041431760:certificate/0bc8dcde-9c8f-4ac9-bb63-5419c4633090"
}

variable "domain_name" {
  description = "The base domain name for the hosted zone"
  type        = string
  default     = "najiib.co.uk"
}

variable "subdomain" {
  description = "The subdomain to create a record for"
  type        = string
  default     = "brickbreaker"
}
