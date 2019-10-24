# terraform.tf

terraform {
 backend "s3" {
 encrypt = true
 bucket = "wlloyd-terraform-remote-state-storage-s3"
 region = "eu-west-1"
 key = "tf-ec2"
 }
}
