data "aws_caller_identity" "current" {}
data "aws_iam_users" "users" {}

resource "aws_iam_user" "admin_user" {
  name = "admin-user-${data.aws_caller_identity.current.id}"
}
