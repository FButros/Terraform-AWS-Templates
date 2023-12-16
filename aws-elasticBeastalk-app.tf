provider "aws" {
  region = "us-west-2" # Specify your AWS region
}

# Create an Elastic Beanstalk application
resource "aws_elastic_beanstalk_application" "example_app" {
  name        = "example-application"
  description = "Example Elastic Beanstalk Application"
}

# Create an Elastic Beanstalk environment
resource "aws_elastic_beanstalk_environment" "example_env" {
  name                = "example-environment"
  application         = aws_elastic_beanstalk_application.example_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.6 running Python 3.8" # Choose an appropriate solution stack
}
