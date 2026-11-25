variable "aws_region" {
  description = "AWS region where the S3 bucket will be created"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket"
  type        = string
}