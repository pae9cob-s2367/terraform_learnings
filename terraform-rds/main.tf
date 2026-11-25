terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0, < 7.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_db_subnet_group" "main" {
  name       = "terraform-rds-subnets"
  subnet_ids = var.private_subnet_ids

  tags = { Name = "terraform-rds-subnets" }
}

resource "aws_security_group" "rds" {
  name_prefix = "terraform-rds-"
  description = "Allow PostgreSQL access from the EC2 security group"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [var.ec2_security_group_id]
  }

  tags = { Name = "terraform-rds" }
}

resource "aws_db_instance" "main" {
  identifier                  = "terraform-rds"
  engine                      = "postgres"
  instance_class              = var.instance_class
  allocated_storage           = 20
  storage_encrypted           = true
  db_name                     = "learningdb"
  username                    = "dbadmin"
  manage_master_user_password = true
  db_subnet_group_name        = aws_db_subnet_group.main.name
  vpc_security_group_ids      = [aws_security_group.rds.id]
  publicly_accessible         = false
  backup_retention_period     = 1
  skip_final_snapshot         = true

  tags = { Name = "terraform-rds" }
}