variable "lb_name" {
  description = "Name of the Load Balancer"
  type        = string
}

variable "security_groups" {
  description = "List of security groups for the Load Balancer"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets for the Load Balancer"
  type        = list(string)
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate for HTTPS listener"
  type        = string
}

variable "target_group_name" {
  description = "Name of the target group"
  type        = string
}

variable "target_group_port" {
  description = "Port for the target group"
  type        = number
}

variable "target_group_protocol" {
  description = "Protocol for the target group (HTTP or HTTPS)"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}

variable "health_check_path" {
  description = "Path for health checks"
  type        = string
}

variable "health_check_interval" {
  description = "Interval for health checks (in seconds)"
  type        = number
}

variable "health_check_timeout" {
  description = "Timeout for health checks (in seconds)"
  type        = number
}

variable "health_check_healthy_threshold" {
  description = "Number of healthy checks before a target is considered healthy"
  type        = number
}

variable "health_check_unhealthy_threshold" {
  description = "Number of unhealthy checks before a target is considered unhealthy"
  type        = number
}

variable "health_check_matcher" {
  description = "HTTP status code matcher for health checks"
  type        = string
}
