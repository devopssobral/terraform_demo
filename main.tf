terraform {
  backend "s3" {
    bucket = "terraform-sobral-devops-lab-tf-state"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
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

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "sobral-lab"
  }
}
