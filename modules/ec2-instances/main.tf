resource "aws_instance" "ansible_machine" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.public_subnet_az1_id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}