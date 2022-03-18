provider "aws" {
  region  = var.region
  shared_credentials_file = var.aws_shared_credentials_file
  profile  = var.aws_profile
}

resource "random_id" "buc" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    bucket = "${var.bucket_name}"
  }

  byte_length = 8
}

resource "aws_s3_bucket" "buc" {
  bucket = "test-s3-${random_id.buc.hex}"
  acl    = var.

  tags = {
    Name        = "Test S3 Purpose"
    Environment = "Testing My AWS Access"
  }
}