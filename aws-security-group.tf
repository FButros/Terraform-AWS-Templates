provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create a Security Group
resource "aws_security_group" "allow_web" {
  name        = "allow_web_traffic"  # Name your security group
  description = "Allow web inbound traffic"
  vpc_id      = "vpc-12345678"       # Replace with your VPC ID

  # Define ingress rule
  ingress {
    description = "HTTPS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  # Define egress rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_web"
  }
}
