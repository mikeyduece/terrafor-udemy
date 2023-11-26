output "ec2_instance" {
  value = aws_instance.myec2
}

output "region" {
  value = var.region
}