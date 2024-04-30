terraform {
  backend "s3" {
    bucket = "mridul-tf-remote-backend-demo"
    profile = "default"
    key = "day5/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}