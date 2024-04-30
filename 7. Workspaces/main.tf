provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "ami value"
}

variable "instance_type" {
  description = "aws instance value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.large"
    "prod" = "t2.xlarge"
  }
}

variable "ec2_tag" {
  description = "aws instance tag value"
  type = map(string)

  default = {
    "dev" = "dev"
    "stage" = "stage"
    "prod" = "prod"
  }
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
    tag_value = lookup(var.ec2_tag, terraform.workspace, "no_env")
}
