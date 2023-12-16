provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"  # Define the CIDR block for the VPC
}

# Create a Subnet
resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.main.id  # Reference the VPC ID
  cidr_block = "10.0.1.0/24"    # Define the CIDR block for the subnet
}
