variable "types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-1  = "t3.micro"
    ap-south-1 = "t2.nano"
  }
}