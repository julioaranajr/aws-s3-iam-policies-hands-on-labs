terraform {
  backend "s3" {
    region         = "eu-central-1"
    bucket         = "aws-iam-s3-test-backend-eu-central-1"
    key            = "aws-training/terraform.tfstates"
    dynamodb_table = "terraform-lock"
    encrypt        = "true"
  }
}
