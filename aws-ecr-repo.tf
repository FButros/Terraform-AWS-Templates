provider "aws" {
  region = "us-east-1" # Specify your AWS region
}

# Create an ECR repository
resource "aws_ecr_repository" "example_repo" {
  name                 = "example-repository"
  image_tag_mutability = "MUTABLE" # or IMMUTABLE
}
