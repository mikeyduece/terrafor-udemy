data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
    bucket = "mikeheft-udemy-course"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}