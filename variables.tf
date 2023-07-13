variable "dynamodb_table" {
  description = "dynamodb table for backend"
  type        = string
}

variable "s3_bucket_names" {
  type    = list(any)
  default = []
}
