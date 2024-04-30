# Describe cloud provider
provider "aws" {
  region = "us-east-1" # specify requried region
}

resource "aws_instance" "my_ec2_instance" {
  ami = "ami-080e1f13689e07408" # AMI for Ubuntu 22.0 (64-bit (x86))
  instance_type = "t2.micro"
  subnet_id = "subnet-0b6ddb58729237548"
  key_name = "aws_test_key"
}

resource "aws_s3_bucket" "tf_statefile_s3" {
    bucket = "mridul-tf-remote-backend-demo"
}

resource "aws_dynamodb_table" "terraform-lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}