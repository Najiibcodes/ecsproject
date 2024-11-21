variable "cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
}

variable "task_family" {
  description = "Family name for the ECS task definition"
  type        = string
}

variable "network_mode" {
  description = "Network mode for the ECS task definition"
  type        = string
}

variable "compatibilities" {
  description = "Launch types supported by the ECS task"
  type        = list(string)
}

variable "task_cpu" {
  description = "CPU units for the ECS task"
  type        = string
}

variable "task_memory" {
  description = "Memory for the ECS task"
  type        = string
}

variable "execution_role_arn" {
  description = "ARN of the ECS task execution role"
  type        = string
}

variable "cpu_architecture" {
  description = "CPU architecture for the ECS task"
  type        = string
}

variable "operating_system_family" {
  description = "Operating system family for the ECS task"
  type        = string
}

variable "container_definitions" {
  description = "JSON definition of the containers"
  type        = string
}

variable "service_name" {
  description = "Name of the ECS Service"
  type        = string
}

variable "desired_count" {
  description = "Number of desired instances"
  type        = number
}

variable "launch_type" {
  description = "Launch type for the ECS Service"
  type        = string
}

variable "health_check_grace_period_seconds" {
  description = "Health check grace period for the ECS Service"
  type        = number
}

variable "deployment_type" {
  description = "Deployment type for the ECS Service"
  type        = string
}

variable "subnets" {
  description = "Subnets for the ECS Service"
  type        = list(string)
}

variable "security_groups" {
  description = "Security groups for the ECS Service"
  type        = list(string)
}

variable "assign_public_ip" {
  description = "Assign public IP to the ECS Service"
  type        = bool
}

variable "target_group_arn" {
  description = "ARN of the target group"
  type        = string
}

variable "container_name" {
  description = "Name of the container"
  type        = string
}

variable "container_port" {
  description = "Port on which the container listens"
  type        = number
}

variable "dependency_arns" {
  description = "ARNs of dependencies for the ECS Service"
  type        = list(string)
}
