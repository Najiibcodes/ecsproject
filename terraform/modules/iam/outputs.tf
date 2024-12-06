

output "execution_role_arn" {
  value = length(aws_iam_role.ecs_task_execution_role) > 0 ? aws_iam_role.ecs_task_execution_role[0].arn : data.aws_iam_role.existing_role.arn
}
