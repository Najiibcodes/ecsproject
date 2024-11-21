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
  default     = "arn:aws:acm:eu-west-2:156041431760:certificate/f505279c-6b68-4697-a29e-ae6162cf4f1f"
}
