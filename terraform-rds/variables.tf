variable "aws_region" {
  description = "AWS region where the VPC and database are located"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID from the terraform-vpc project output"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs in at least two availability zones"
  type        = list(string)
}

variable "ec2_security_group_id" {
  description = "Security group ID from the terraform-ec2 project output"
  type        = string
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}