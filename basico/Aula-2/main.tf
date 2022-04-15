terraform {
  required_version = "1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-519819198198198418655189"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "João Vitor"
    UpdatedAt   = "2022-04-14"
  }
}
