terraform {
  backend "s3" {
    bucket = "terraform-sobral-devops-lab-tf-state"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
  }
}
