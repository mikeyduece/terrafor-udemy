terraform {
  backend "s3" {
    bucket = "mikeheft-udemy-course"
    key    = "terraform.tfstate"
    region = "us-west-1"
    # used to enable locking during terraform actions
    # dynamodb_table = "table-name"
  }
}