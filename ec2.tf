/*
Provides an EC2 instance resource.
This allows instances to be created, updated, and deleted. Instances also support provisioning.
*/
resource "aws_instance" "myec2" {
  # ami           = data.aws_ami.app_ami.id
  ami           = "ami-0230bd60aa48260c6"
  instance_type = var.types["us-west-1"]
}