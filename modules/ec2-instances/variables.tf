variable "public_subnet_az1_id" {}

variable "ami" {
    type = string
    default = "ami-005e54dee72cc1d00"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "vpc_id" {}