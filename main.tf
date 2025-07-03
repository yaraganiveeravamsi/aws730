# aws provide block
provider "aws" {
    access_key = "AKIAWQUOZ4JWC7BC4H6X"
    secret_key = "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"
  region = "us-east-1"
}

resource "aws_vpc" "vamsi" {
  cidr_block = var.ipaddress
  tags = {
    name = var.vpc_name
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vamsi.id
  cidr_block = var.ipsubnet
  tags = {
    name = var.sub_name
  }
  
}
