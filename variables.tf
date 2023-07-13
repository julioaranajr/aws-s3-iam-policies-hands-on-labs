variable "dynamodb_table" {
  description = "dynamodb table for backend"
  type        = string
}

variable "s3_bucket_names" {
  type    = list(any)
  default = []
}

variable "iam_group_name" {
  type    = list(any)
  default = []
}

variable "iam_user_name" {
  type    = list(any)
  default = []
}
