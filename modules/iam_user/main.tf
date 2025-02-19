resource "aws_iam_user" "demouser" {
  name = "iam-user-${var.env}"

  tags = {
    Environment = "${var.env}"
    CreatedBy   = "Terraform-jenkins-pipeline-${var.env}"
    Project     = "DevOps-Automation-pipeline-${var.env}"
    owner       = "AkshayT-${var.env}"
  }
}