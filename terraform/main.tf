provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "terraform-lab-bucket"
    Environment = "dev"
  }
}

