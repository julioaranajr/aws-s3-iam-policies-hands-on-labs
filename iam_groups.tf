resource "aws_iam_group" "my_groups" {
  count = length(var.iam_group_name)
  name  = var.iam_group_name[count.index]
  path  = "/users/"
}
