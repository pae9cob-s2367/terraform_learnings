# S3 Terraform root

This folder creates an Amazon S3 bucket for object storage. It is independent of the VPC and EC2 roots and uses its own Terraform state. The bucket has versioning and server-side encryption enabled and blocks public access.

Copy `terraform.tfvars.example` to a local `terraform.tfvars` file and replace the example bucket name with a globally unique name. Then run `terraform init`, `terraform validate`, and `terraform plan` from this folder. Review the plan before applying.

S3 storage, requests, and retained object versions can incur AWS charges. Empty the bucket, including all object versions and delete markers, before running `terraform destroy`; Terraform does not delete bucket contents automatically.