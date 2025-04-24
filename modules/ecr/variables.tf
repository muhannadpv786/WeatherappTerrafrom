variable "ecr_repo_name" {
  type = string
}




variable "iam_role_arn" {
  description = "IAM role ARN with access to ECR (optional)"
  type        = string
  default     = ""
}