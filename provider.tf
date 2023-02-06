
// Configure the AWS provider

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }

provider "aws" {
  region  = var.region
  access_key = "AKIA2K7VTGLZJJSSMXGZ"
  secret_key = "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"
}

# data "aws_region" "current" {}
# data "aws_availability_zones" "available" {}