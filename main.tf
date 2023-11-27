module "ec2module" {
  source        = "./modules/ec2"
  instance_type = "t2.nano"
}

module "eip" {
  source = "./modules/eip"
}

module "elb" {
  source = "./modules/elb"
}