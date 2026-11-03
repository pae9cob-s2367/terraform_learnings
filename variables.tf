variable "aws_region" {
  description = "This is the aws region where its gonna be deployed"
  type        = string
  default     = "ap-south-1"
}
variable "vpc_cidr" {
  description = "This is the cidr or range for the networking address of vpc"
  type        = string
  default     = "10.0.0.0/16"
}
variable "public_cidr_1" {
  description = "This is the cidr for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "public_cidr_2" {
  description = "This is the cidr for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}
variable "public_cidr_3" {
  description = "This is the cidr for the third public subnet"
  type        = string
  default     = "10.0.3.0/24"
}
variable "aws_az1" {
  description = "This is the first availability zone"
  type        = string
  default     = "ap-south-1a"
}
variable "aws_az2" {
  description = "This is the second availability zone"
  type        = string
  default     = "ap-south-1b"
}
variable "aws_az3" {
  description = "This is the third availability zone"
  type        = string
  default     = "ap-south-1c"
}
variable "private_cidr_1" {
  description = "This is the cidr for the first private subnet"
  type        = string
  default     = "10.0.4.0/24"
}
variable "private_cidr_2" {
  description = "This is the cidr for the second private subnet"
  type        = string
  default     = "10.0.5.0/24"
}
variable "private_cidr_3" {
  description = "This is the cidr for the third private subnet"
  type        = string
  default     = "10.0.6.0/24"
}
    