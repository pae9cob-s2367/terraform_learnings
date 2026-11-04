aws_region = "us-east-1"
vpc_cidr   = "10.0.0.0/16"

public_subnets = {
  "public_1" = { cidr = "10.0.1.0/24", az = "us-east-1a" }
  "public_2" = { cidr = "10.0.8.0/24", az = "us-east-1b" }
  "public_3" = { cidr = "10.0.16.0/24", az = "us-east-1c" }
}

private_subnets = {
  "private_1" = { cidr = "10.0.24.0/24", az = "us-east-1a" }
  "private_2" = { cidr = "10.0.32.0/24", az = "us-east-1b" }
  "private_3" = { cidr = "10.0.40.0/24", az = "us-east-1c" }
}