output "alb_arn" {
  description = "ARN of the Application Load Balancer"
  value       = aws_lb.app_lb.arn
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app_lb.dns_name
}

output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = aws_lb_target_group.ecs_tg.arn
}

output "alb_zone_id" {
  description = "Hosted zone ID of the ALB"
  value       = aws_lb.app_lb.zone_id
}
