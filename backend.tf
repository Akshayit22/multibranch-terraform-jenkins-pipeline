terraform {
  backend "s3" {
    bucket = "akshay-s3-bucket-terraform"
    key    = "terraform_learning_multibranch/terraform.tfstate"
    region = "us-east-1"
  }
}
