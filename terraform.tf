terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.1"
    }
  }

  backend "s3" {
    bucket         = "4remotebackendbucket"
    dynamodb_table = "4remotebackenddb"
    region         = "us-east-1"
    key            = "terraform.tfstate"  # Make sure the state file name is correct
  }
}
