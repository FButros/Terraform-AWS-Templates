provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create a Launch Configuration
resource "aws_launch_configuration" "example" {
  name          = "example_config"           # Name your launch configuration
  image_id      = "ami-0c55b159cbfafe1f0"    # Replace with your desired AMI ID
  instance_type = "t2.micro"                 # Specify the instance type
}

# Create an Auto Scaling Group
resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.id  # Reference the launch configuration
  min_size             = 1                                    # Minimum number of instances
  max_size             = 3                                    # Maximum number of instances
  vpc_zone_identifier  = ["subnet-abcdefgh", "subnet-ijklmnop"]  # Specify subnet IDs
}
