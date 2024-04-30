provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "ami for the ec2 server"
}

variable "instance_type" {
  description = "instance type for ec2 server"
}

variable "tag_value" {
  description = "value for tag"
}

resource "aws_instance" "example_server" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.tag_value
  }
}
