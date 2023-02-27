output "ansible_security_group_id" {
  value = aws_security_group.ansible_security_group.id
}

output "server_security_group_id" {
  value = aws_security_group.server_security_group.id
}