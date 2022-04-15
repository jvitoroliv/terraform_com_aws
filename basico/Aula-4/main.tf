terraform {
  required_version = "1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}