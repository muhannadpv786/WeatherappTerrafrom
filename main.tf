terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

backend "s3" {
    bucket         = "muhannadbucket123"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}


provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr       = var.vpc_cidr
  public_subnet  = var.public_subnet_cidr
  private_subnet = var.private_subnet_cidr
}

module "security_groups" {
  source = "./modules/security_groups"
  
  vpc_id      = module.vpc.vpc_id
  cluster_name = var.cluster_name
}

module "ec2" {
  source = "./modules/ec2"
  
  vpc_id             = module.vpc.vpc_id
  public_subnet_id   = module.vpc.public_subnet_id
  private_subnet_id  = module.vpc.private_subnet_id
  key_name           = var.key_name
  jump_instance_type = var.jump_instance_type
  db_instance_type   = var.db_instance_type
  jump_sg_id         = module.security_groups.jump_sg_id
  db_sg_id           = module.security_groups.db_sg_id
}

module "eks" {
  source = "./modules/eks"
  
  cluster_name       = var.cluster_name
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  eks_cluster_sg_id  = module.security_groups.eks_cluster_sg_id
}
module "ecr" {
  source        = "./modules/ecr"
  ecr_repo_name = var.ecr_repo_name
}
