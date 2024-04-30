variable "aws_region" {
  description = "AWS Region"
#   default = "us-east-1"
  type = string
}

variable "instance_type" {
 description = "Instance type for EC2" 
#  default = "t2.micro"
 type = string
}

variable "server_ami" {
  description = "AMI for server"
#   default = "ami-080e1f13689e07408" # AMI for Ubuntu 22.0 (64-bit (x86))
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
