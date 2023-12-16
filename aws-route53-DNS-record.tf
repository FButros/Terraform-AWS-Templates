provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}

# Create a Route 53 Zone
resource "aws_route53_zone" "primary" {
  name = "example.com"  # Specify your domain name
}

# Create a DNS Record
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.example.com"  # Set the DNS record name
  type    = "A"                # Record type
  ttl     = "300"
  records = ["192.0.2.1"]      # Replace with your IP address
}
