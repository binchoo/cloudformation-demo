provider "aws" {
    profile = "default"
    region  = "ap-northeast-1"
}

resource "aws_s3_bucket" "eg_bucket" {
  bucket = "my-tf-test-bucket-jbinchoo"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "eg_acl" {
  bucket = aws_s3_bucket.eg_bucket.id
  acl    = "private"
}