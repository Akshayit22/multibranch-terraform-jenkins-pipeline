terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "Oregon"
  region = "us-weat-2"
}

provider "aws" {
  alias  = "Mumbai"
  region = "ap-south-1"
}