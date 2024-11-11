# AWS Provider Configuration
provider "aws" {
 region = "us-east-1" # Set your preferred region
}
# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
 ami = "ami-0866a3c8686eaeeba" # Replace with actual AMI ID
 instance_type = "t2.micro" # Free-tier eligible
 tags = {
 Name = "graded-project-instance"
 }
}
# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
 bucket = "srmaji1234" # Use a globally unique bucket name
 acl = "private"
}
