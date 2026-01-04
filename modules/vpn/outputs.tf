output "vpn_public_ip" {
  value = aws_instance.vpn.public_ip
}
output "private_key_pem" {
  value     = tls_private_key.vpn.private_key_pem
  sensitive = true
}
