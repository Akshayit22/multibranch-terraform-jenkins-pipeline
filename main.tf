module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
  env         = var.env
}

module "iam_user" {
  source = "./modules/iam_user"
  env = var.env
}