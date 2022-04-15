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

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote_state" {
    bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
    force_destroy = true

    versioning{
        enabled = true
    }

    tags = {
        Description = "Stores terraform remote state files"
        MenagedBy = "Terraform"
        Owner = "João Vitor"
        CreatedAt = "2022-04-15"
    }
}

output "remote_state_bucket" {
    value = aws_s3_bucket.remote_state.bucket
}

output "remote_state_bucket_arn" {
    value = aws_s3_bucket.remote_state.bucket
}