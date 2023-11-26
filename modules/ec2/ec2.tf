/*
Provides an EC2 instance resource.
This allows instances to be created, updated, and deleted. Instances also support provisioning.
*/
resource "aws_instance" "myec2" {
  # ami           = data.aws_ami.app_ami.id
  ami           = "ami-0230bd60aa48260c6"
  instance_type = var.types[var.region]

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./terraform-udemy-course.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1",
      "systemctl nginx",
    ]
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}