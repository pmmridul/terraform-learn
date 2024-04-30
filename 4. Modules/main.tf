module "my_aws_ec2_instance" {
  source = "./my_modules/ec2_instance"
  aws_region = var.aws_region
  subnet_id = var.subnet_id
  aws_key = var.aws_key 
  instance_type = var.instance_type
  server_ami = var.server_ami
}