variable "execution_role_name" {
  description = "Name of the ECS task execution role"
  type        = string
}

variable "execution_policy_arn" {
  description = "Policy ARN to attach to the ECS task execution role"
  type        = string
}
