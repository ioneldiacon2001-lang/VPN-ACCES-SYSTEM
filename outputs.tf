output "vpn_public_ip" {
  value = module.vpn.vpn_public_ip
}

output "vpn_private_key_pem" {
  value     = module.vpn.private_key_pem
  sensitive = true
}
output "app_private_ip" {
  value = module.app.app_private_ip
}

output "app_private_key_pem" {
  value     = module.app.private_key_pem
  sensitive = true
}