variable "aws_region" {
  description = "AWS region where the VPC and EC2 instance are located"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID from the terraform-vpc project output"
  type        = string
}

variable "private_subnet_id" {
  description = "ID of private_1 from the terraform-vpc private_subnet_ids output"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
