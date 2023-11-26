module "security_groups" {
  source = "../security_group"
}

/*
Provides an EC2 instance resource.
This allows instances to be created, updated, and deleted. Instances also support provisioning.
*/
resource "aws_instance" "myec2" {
  # ami           = data.aws_ami.app_ami.id
  ami           = "ami-06e4ca05d431835e9"
  instance_type = lookup(var.instance_types, terraform.workspace)
  # instance_type          = var.types[var.region]
  vpc_security_group_ids = [module.security_groups.security_group_id]

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  # connection {
  #   type        = "ssh"
  #   user        = "ec2-user"
  #   private_key = file("./terraform-udemy-course.pem")
  #   host        = self.public_ip
  # }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo amazon-linux-extras install -y nginx1",
  #     "systemctl nginx",
  #   ]
  # }

  # provisioner "local-exec" {
  #   command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  # }
}