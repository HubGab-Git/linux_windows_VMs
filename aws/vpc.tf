module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.18.0"

  cidr                 = var.vpc_cidr
  public_subnets       = var.public_subnets
  azs                  = ["eu-west-1a"]
  enable_dns_support   = true
  enable_dns_hostnames = true
}