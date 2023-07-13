resource "aws_iam_policy" "s3_restricted_policy" {
  name        = "S3RestrictedPolicy"
  path        = "/"
  description = "S3_Restricted_Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "VisualEditor0",
        "Effect" : "Allow",
        "Action" : [
          "s3:ListStorageLensConfigurations",
          "s3:ListAccessPointsForObjectLambda",
          "s3:GetAccessPoint",
          "s3:PutAccountPublicAccessBlock",
          "s3:GetAccountPublicAccessBlock",
          "s3:ListAllMyBuckets",
          "s3:ListAccessPoints",
          "s3:PutAccessPointPublicAccessBlock",
          "s3:ListJobs",
          "s3:PutStorageLensConfiguration",
          "s3:ListMultiRegionAccessPoints",
          "s3:CreateJob"
        ],
        "Resource" : "*"
      },
      {
        "Sid" : "VisualEditor1",
        "Effect" : "Allow",
        "Action" : "s3:*",
        "Resource" : "arn:aws:s3::738649850722:accesspoint/*"
      },
      {
        "Sid" : "VisualEditor2",
        "Effect" : "Allow",
        "Action" : "s3:*",
        "Resource" : [
          "arn:aws:s3:*:738649850722:accesspoint/*",
          "arn:aws:s3:*:738649850722:storage-lens/*",
          "arn:aws:s3:*:738649850722:job/*",
          "arn:aws:s3:us-west-2:738649850722:async-request/mrap/*/*",
          "arn:aws:s3:::*/*",
          "arn:aws:s3:::aws-iam-s3-test-appconfig1-eu-central-1",
          "arn:aws:s3:::aws-iam-s3-test-appconfig2-eu-central-1",
          "arn:aws:s3-object-lambda:*:738649850722:accesspoint/*"
        ]
      }
    ]
  })
}
