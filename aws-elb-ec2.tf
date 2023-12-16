provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create an Elastic Load Balancer
resource "aws_elb" "web" {
  name               = "web-load-balancer"  # Name your ELB
  availability_zones = ["us-west-2a", "us-west-2b"]  # Define availability zones

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

# Create EC2 instances
resource "aws_instance" "web1" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Specify the instance type
  key_name      = "my-key"                # Replace with your SSH key name
}

resource "aws_instance" "web2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Specify the instance type
  key_name      = "my-key"                # Replace with your SSH key name
}
