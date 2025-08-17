variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_prefix" {
  type        = string
  description = "bucket name"
  default     = "or-sniper-bucket"

}