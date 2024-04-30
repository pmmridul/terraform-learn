# Describe cloud provider
provider "aws" {
  region = var.aws_region
}

# Describe EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami = var.server_ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.aws_key
}
 