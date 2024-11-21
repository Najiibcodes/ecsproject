output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "igw_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "public_subnets" {
  description = "Public subnets"
  value       = [aws_subnet.public_1.id, aws_subnet.public_2.id]
}

output "public_route_table_id" {
  description = "Route table ID for public subnets"
  value       = aws_route_table.public_rt.id
}
