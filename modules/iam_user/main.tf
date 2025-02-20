resource "aws_iam_user" "demouser" {
  name = "terraform-iam-user-${var.env}"

  tags = {
    Environment = "${var.env}"
    CreatedBy   = "Terraform-jenkins-pipeline-akshay-${var.env}"
    Project     = "DevOps-Automation-pipeline-${var.env}"
    owner       = "AkshayT-${var.env}"
  }
}