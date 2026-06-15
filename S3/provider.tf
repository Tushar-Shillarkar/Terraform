terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.50.0"
    }
    
    }
    backend "s3" {
        bucket = "demo-bucket-098cdeea4657a332"
        key = "backend.tfstate"
        region = "eu-north-1"

      
    }
}

provider "aws" {
  region = var.region

}