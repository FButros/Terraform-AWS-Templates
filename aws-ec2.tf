provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Specify the instance type

  tags = {
    Name = "ExampleInstance"  # Naming your instance
  }
}
