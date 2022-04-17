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

resource "tls_private_key" "tls_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair_sobral" {
  key_name   = "my_super_key"
  public_key = tls_private_key.tls_key.public_key_openssh
}

#TODO: create security group to connect ssh

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = aws_key_pair.key_pair_sobral.key_name

  tags = {
    Name = "sobral-lab"
  }
}
