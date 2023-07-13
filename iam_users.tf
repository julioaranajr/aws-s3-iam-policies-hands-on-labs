resource "aws_iam_user" "my_users" {
  count = length(var.iam_user_name)
  name  = var.iam_user_name[count.index]
  path  = "/users/"
}
