terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket         = "cicd-lab-tfstate-helkhatib-abc123"
    key            = "prod/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "cicd-lab-tflocks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}