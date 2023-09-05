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
  access_key = var.AWS_access_key
  secret_key = var.SECRET_key
  
}