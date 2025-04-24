variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "jump_instance_type" {
  description = "Jump server instance type"
  type        = string
}

variable "db_instance_type" {
  description = "Database server instance type"
  type        = string
}

variable "jump_sg_id" {
  description = "Jump server security group ID"
  type        = string
}

variable "db_sg_id" {
  description = "Database security group ID"
  type        = string
}
