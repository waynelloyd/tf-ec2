# terraform.tf

terraform {
 backend "s3" {
 encrypt = true
 bucket = "wlloyd-terraform-state-store"
 region = "eu-west-1"
 key = "tf-ec2.tfstate"
 dynamodb_table = "terraform-state-lock"
 }
}
