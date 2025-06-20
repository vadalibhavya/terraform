terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "5.98.0"
		}
	}
  backend "s3" {
	bucket = "roboshop-terraform"
	key    = "vpc-test"
	region = "us-east-1"
	encrypt = true
	use_lock_file = true
  }
}
provider "aws" {
  region = "us-east-1"
}