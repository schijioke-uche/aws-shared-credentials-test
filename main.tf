/*  Depricated - March 2022
provider "aws" {
  region  = var.region
  shared_credentials_file = var.aws_shared_credentials_file
  profile  = var.aws_profile
}
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5"
    }
  }
}
provider "aws" {
  region  = var.aws_region
  shared_config_files      = [var.aws_shared_config_file]
  shared_credentials_files = [var.aws_shared_credentials_file]
  profile                  = var.aws_profile
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

  tags = {
    Name        = "Test S3 Purpose"
    Environment = "Testing My AWS Access"
  }
}

resource "aws_s3_bucket_acl" "buc" {
  bucket = aws_s3_bucket.buc.id
  acl    = "private"
}
