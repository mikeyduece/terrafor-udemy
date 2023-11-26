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

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "architecture" {
  type    = string
  default = "x86_64"
}