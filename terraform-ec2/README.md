# EC2 Terraform root

This folder manages one private EC2 instance in the VPC created by `../terraform-vpc`. It does not create another VPC. The two folders use separate Terraform state, so apply the VPC root first and copy its outputs into this root's `terraform.tfvars`.

From `terraform-vpc`, run `terraform output vpc_id` and `terraform output private_subnet_ids`. Copy the VPC ID and the `private_1` subnet ID into a local `terraform.tfvars` file in this folder. Use `terraform.tfvars.example` as a template and replace both placeholder IDs. Do not apply with the placeholder values.

Then, from this folder, run `terraform init`, `terraform validate`, and `terraform plan`. Review the plan before applying. The instance is placed in the private subnet, has no inbound security-group rules, and uses Systems Manager for management. Its outbound access relies on the VPC's NAT Gateway. A `t3.micro` instance and its storage can incur AWS charges while running.
