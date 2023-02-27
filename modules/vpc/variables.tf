variable "region" {
  default     = "eu-west-1"
}

# VPC variables
variable "project_name" {
    default = "Ansible"
}
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "public_subnet_az1_cidr" {
    default = "10.0.0.0/24"
}