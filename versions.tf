terraform {
  required_providers {
    aws = {
      version = ">= 4.40.0, < 4.41.0"
      source  = "hashicorp/aws"
    }
  }

  required_version = "~> 1.0"
}


provider "aws" {
  region = local.region
  default_tags {
    tags = merge(
      local.tags
    )
  }
}
