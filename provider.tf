terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}

provider "aws" {
  # Configuration options
  profile = "arn:aws:iam::525567955121:role/Account-user"
  # access_key = var.AWS_access_key
  # secret_key = var.SECRET_key
  # region = "us-east-1"
}