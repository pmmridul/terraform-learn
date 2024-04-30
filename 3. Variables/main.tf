# Describe cloud provider
provider "aws" {
  region = "us-east-1" # specify requried region
}


variable "instance_type" {
 description = "Instance type for EC2" 
 default = "t2.micro"
 type = string
}

variable "server_ami" {
  description = "AMI for server"
  default = "ami-080e1f13689e07408" # AMI for Ubuntu 22.0 (64-bit (x86))
  type = string
}

variable "subnet_id" {
  description = "Subnet for server"
  type = string
}

variable "aws_key" {
  description = "Key to login to server"
  type = string
}


# Describe EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami = var.server_ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.aws_key
}

output "public_ip" {
  value = aws_instance.my_ec2_instance.public_ip
}