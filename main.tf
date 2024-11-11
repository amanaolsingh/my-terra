# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"  # Set your preferred region
}

# EC2 Instance Configuration
resource "aws_instance" "my_instance" {
  ami           = "ami-0866a3c8686eaeeba"  # Replace with your desired AMI ID
  instance_type = "t2.micro"                # Instance type, adjust as needed

  tags = {
    Name = "MyInstance"
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-amayush"  # Use a globally unique bucket name
  acl    = "private"      # Bucket ACL, 'private' is a common default

  tags = {
    Name        = "MyBucket"
    Environment = "Production"
  }
}

