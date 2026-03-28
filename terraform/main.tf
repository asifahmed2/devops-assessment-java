provider "aws" {
  region = "us-east-1"
}

# VPC (Networking)
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# EC2 Instance (Compute)
resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# S3 Bucket (Storage)
resource "aws_s3_bucket" "app_bucket" {
  bucket = "devopsapp-bucket-12345"
}