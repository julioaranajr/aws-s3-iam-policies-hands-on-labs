resource "aws_s3_bucket" "resources_buckets" {
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
