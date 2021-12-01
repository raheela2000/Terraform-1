provider "aws" {
  region ="ap-south-1"
  access_key = "AKIA5KITMAFYMBN6XVVD"
  secret_key = "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"
}

resource "aws_s3_bucket" "Global-vpc" {
  acl    = "private"
}

