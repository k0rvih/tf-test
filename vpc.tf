data "aws_vpc" "vpc_id" {
    default = true
}

output "vpc_id" {
  value = data.aws_vpc.vpc_id.id
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "landingzone-s3-production-tfstate-automationhub"
    key = "test001"
    region = "us-east-1"
    dynamodb_table = "global-terraform-lock"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.67.0"
    }
  }
}