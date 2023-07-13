resource "aws_s3_bucket" "resources_buckets" {
  # checkov:skip=CKV_AWS_144
  # checkov:skip=CKV_AWS_145
  # checkov:skip=CKV_AWS_18
  # checkov:skip=CKV_AWS_21
  count  = length(var.s3_bucket_names)
  bucket = var.s3_bucket_names[count.index]
}

resource "aws_s3_bucket_public_access_block" "s3_resources" {
  count                   = length(var.s3_bucket_names)
  bucket                  = var.s3_bucket_names[count.index]
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "backend" {
  # checkov:skip=CKV_AWS_28
  # checkov:skip=CKV_AWS_119
  name         = var.dynamodb_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
