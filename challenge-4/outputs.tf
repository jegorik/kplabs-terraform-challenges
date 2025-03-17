output "aws_users" {
  value = data.aws_iam_users.users
}

output "aws_users_total" {
  value = length(data.aws_iam_users.users)
}