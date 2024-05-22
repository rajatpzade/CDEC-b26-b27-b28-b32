provider "aws" {
  region = "ap-southeast-1"
}


terraform {
  backend "s3" {
    bucket = "backend-tfrom"
    key    = "tf-state"
    region = "ap-southeast-1"
  }
}

module "ec2-instance_example_basic" {
  source  = "./modules/ec2-instance" 
}
