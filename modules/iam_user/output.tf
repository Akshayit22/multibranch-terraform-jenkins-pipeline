output "iam-user-name" {
  value = aws_iam_user.demouser.name
}

output "iam-user-arn" {
  value = aws_iam_user.demouser.arn
}