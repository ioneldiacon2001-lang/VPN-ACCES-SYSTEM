output "vpn_public_ip" {
  value = aws_instance.vpn.public_ip
}
output "private_key_pem" {
  value     = tls_private_key.vpn.private_key_pem
  sensitive = true
}
output "vpn_primary_eni_id" {
  description = "Primary network interface (ENI) ID of the VPN instance"
  value       = aws_instance.vpn.primary_network_interface_id
}
