variable "ami_id" {
  default = "ami-0e35ddab05955cf57"
}

resource "aws_instance" "jump" {
  ami                         = var.ami_id
  instance_type               = var.jump_instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.jump_sg_id]

  tags = {
    Name = "JumpServer"
  }
}

resource "aws_instance" "db" {
  ami                         = var.ami_id
  instance_type               = var.db_instance_type
  subnet_id                   = var.private_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = false
  vpc_security_group_ids      = [var.db_sg_id]

  tags = {
    Name = "DatabaseServer"
  }
}
