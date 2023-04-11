
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "vpc" {
    source = "./vpc"
}

# module "ec2" {
#     source = "./ec2"
# }