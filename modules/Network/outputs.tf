output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "vpn_sg_id" {
  value = aws_security_group.vpn_sg.id
}
