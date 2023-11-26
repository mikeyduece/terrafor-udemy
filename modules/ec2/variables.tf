variable "region" {
  type    = string
  default = "us-west-1"
}
variable "types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-1  = "t3.micro"
    ap-south-1 = "t2.nano"
  }
}

variable "instance_types" {
  type = map(any)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.micro"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "architecture" {
  type    = string
  default = "x86_64"
}