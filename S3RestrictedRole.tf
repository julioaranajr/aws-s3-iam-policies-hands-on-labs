resource "aws_iam_role" "restricted_role" {
  name = "S3RestrictedRole"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "AWS" : "738649850722"
        },
        "Condition" : {}
      }
    ]
  })
}

# resource "aws_iam_policy_attachment" "s3restrictedpolicy_attach" {
#   name       = "s3-restricted-attachment"
#   users      = [aws_iam_user.user.name]
#   roles      = [aws_iam_role.restricted_role.name]
#   groups     = [aws_iam_group.group.name]
#   policy_arn = aws_iam_policy.s3_restricted_policy.arn
# }
