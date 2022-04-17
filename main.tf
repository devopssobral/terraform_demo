terraform {
  backend "s3" {
    bucket     = "terraform-sobral-devops-lab-tf-state"
    key        = "terraform-test.tfstate"
    region     = "us-east-2"
    encryption = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_sobral_lab"
  }
}
