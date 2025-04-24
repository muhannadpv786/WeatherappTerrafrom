output "jump_server_public_ip" {
  description = "Public IP of the jump server"
  value       = aws_instance.jump.public_ip
}

output "database_server_private_ip" {
  description = "Private IP of the database server"
  value       = aws_instance.db.private_ip
}