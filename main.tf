# triggering CI test 2
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"

        }
        random =  {
            source = "hashicorp/random"
            version = "~> 3.0"
            
        }
    }

    required_version = ">= 1.6.0"
}

provider "aws" {
    region = var.aws_region
}

resource "random_id" "bucket_suffix" {
    byte_length = 4
}

resource "aws_s3_bucket" "or_bucket" {
    bucket = "${var.bucket_prefix}-${random_id.bucket_suffix.hex}"

    force_destroy = true
}