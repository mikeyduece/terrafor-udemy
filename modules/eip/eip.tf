# Provides an Elastic IP resource.
resource "aws_eip" "lb" {
  domain = "vpc"
}