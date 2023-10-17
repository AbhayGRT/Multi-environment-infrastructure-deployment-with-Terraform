terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.16.1"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_ACCESS_KEY"

}

resource "aws_s3_bucket" "backend_bucket" {
    bucket = "4remotebackendbucket"
}

resource "aws_dynamodb_table" "backend_table" {
    name = "4remotebackenddb"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}
