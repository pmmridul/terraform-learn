# Describe cloud provider
provider "aws" {
  region = "us-east-1" # specify requried region
}

# Describe EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami = "ami-080e1f13689e07408" # AMI for Ubuntu 22.0 (64-bit (x86))
  instance_type = "t2.micro"
  subnet_id = "subnet-0b6ddb58729237548"
  key_name = "aws_test_key"
}