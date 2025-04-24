variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet" {
  description = "Public subnet CIDR block (will be in ap-south-1a)"
  type        = string
}

variable "private_subnet" {
  description = "Primary private subnet CIDR block (will be in ap-south-1a)"
  type        = string
}