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

## Create EC2 instances
#module "ec2-instances" {
#  source = "../modules/ec2-instances"
#  vpc_id = module.vpc.vpc_id
#  public_subnet_az1_id = module.vpc.public_subnet_az1_id
#  ansible_security_group_id = module.security-group.ansible_security_group_id
#  server_security_group_id = module.security-group.server_security_group_id
#}
