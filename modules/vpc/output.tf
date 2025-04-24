output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet in ap-south-1a"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "The ID of the primary private subnet in ap-south-1a"
  value       = aws_subnet.private.id
}

output "private_subnet_ids" {
  description = "List of all private subnet IDs (primary + dummy)"
  value       = [aws_subnet.private.id, aws_subnet.private_dummy.id]
}