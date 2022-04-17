output "instance_private_ip_addr" {
  value = aws_instance.web.private_ip
}

output "instance_public_ip_addr" {
  value = aws_instance.web.public_ip
}
