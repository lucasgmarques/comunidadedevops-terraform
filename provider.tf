terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }
  backend "s3" {
    bucket = "comunidadedevops-tfstate-lucasgmarques"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}