variable "elb_name" {
  type    = string
  default = "foobar-terraform-elb"
}

variable "elb_availability_zones" {
  type    = list(string)
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "timeout" {
  type    = number
  default = 400
}