variable "aws_region" {
  description = "AWS region for the deployment"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "Map of public subnets with their CIDR and AZ"
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "private_subnets" {
  description = "Map of private subnets with their CIDR and AZ"
  type = map(object({
    cidr = string
    az   = string
  }))
}