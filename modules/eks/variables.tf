variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for EKS nodes (must be in at least 2 AZs)"
  type        = list(string)
}

variable "eks_cluster_sg_id" {
  description = "Security group ID for EKS control plane"
  type        = string
}

variable "key_name" {
  description = "(Optional) SSH key pair name for node access"
  type        = string
  default     = ""  # Only needed if you want SSH access to nodes
}