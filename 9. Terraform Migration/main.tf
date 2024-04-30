provider "aws" {
  region = "ap-south-1"
}

import {
  id = "i-0b1ad10cc92536b89"

  to = aws_instance.bais
}

