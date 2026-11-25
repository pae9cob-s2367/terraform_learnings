# RDS Terraform root

This folder creates a private PostgreSQL RDS instance in the VPC from `../terraform-vpc`. Its security group permits PostgreSQL traffic only from the security group created by `../terraform-ec2`. The roots have separate Terraform state, so apply the VPC and EC2 roots first.

Copy `terraform.tfvars.example` to a local `terraform.tfvars`. Replace the placeholders with the `vpc_id` and `private_subnet_ids` outputs from the VPC root and the `security_group_id` output from the EC2 root. Select at least two private subnets in different availability zones in the same region and VPC. Then run `terraform init`, `terraform validate`, and `terraform plan` from this folder, and review the plan before applying.

The database has encrypted storage and no public address. RDS manages the master password in AWS Secrets Manager; the `master_secret_arn` output identifies the secret. An authorized user can retrieve it from Secrets Manager. Connect from the EC2 instance using the database endpoint and a PostgreSQL client; the instance needs network access and suitable permissions for any secret retrieval.

RDS, storage, backups, and Secrets Manager can incur AWS charges. This learning example skips the final snapshot when destroyed, permanently deleting the database unless you create a backup separately. Destroy this root before destroying EC2 or the VPC.