/*
Provides an Elastic Load Balancer resource,
also known as a "Classic Load Balancer" after the release of Application/Network Load Balancers.
*/
resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.elb_availability_zones
  access_logs {
    bucket = "mikeheft-udemy-course"
    enabled = true
  }

  listener {
    instance_port     = 8000
    instance_protocol = "https"
    lb_port           = 80
    lb_protocol       = "https"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = var.elb_name
  }
}