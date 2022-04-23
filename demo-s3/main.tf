resource "aws_s3_bucket" "bucket" {
  bucket = "meetup-sobral-bucket-xpto-22"

  tags = {
    Name        = "meetup-sobral-bucket-xpto-22"
    Environment = "Dev"
    CreatedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "bucket-versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
