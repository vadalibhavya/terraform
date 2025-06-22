terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.54"
    }
  }
  backend "s3" {
    bucket  = "roboshop-terraform-addy"
    key     = "vpc"
    region  = "us-east-1"
    encrypt = true

  }
}
provider "aws" {
  region = "us-east-1"
}