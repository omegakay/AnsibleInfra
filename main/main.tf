# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create VPC
module "vpc" {
  source = "../modules/vpc"
}

# Create Security Groups
module "security_groups" {
  source = "../modules/security-group"
  vpc_id = module.vpc.vpc_id
}
