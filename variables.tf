variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"  # Consider adding a default region
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR block"
  type        = string
}

variable "private_subnet_cidr" {
  description = "Primary private subnet CIDR block"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "jump_instance_type" {
  description = "Instance type for jump server"
  type        = string
  default     = "t2.medium"  # Added default value
}

variable "db_instance_type" {
  description = "Instance type for database server"
  type        = string
  default     = "t2.small"  # Added default value
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "eks-cluster"  # Added default value
}

variable "ecr_repo_name" {
  description = "Name of the frontend ECR repository"
  type        = string
  default     = "frontend"
}
variable "iam_role_arn" {
  description = "IAM role ARN with access to ECR"
  type        = string
  default     = ""
}