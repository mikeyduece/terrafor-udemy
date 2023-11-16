variable "vpn_ip" {
  type    = string
  default = "116.50.30.20/32"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "architecture" {
  type    = string
  default = "x86_64"
}

variable "elb_name" {
  type = string
}

variable "elb_availability_zones" {
  type = list(string)
}

variable "timeout" {
  type = number
}

variable "types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-1  = "t3.micro"
    ap-south-1 = "t2.nano"
  }
}