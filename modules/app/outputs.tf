
output "private_key_pem" {
  value     = tls_private_key.app.private_key_pem
  sensitive = true
}
output "app_private_ip" {
  value = aws_instance.app.private_ip
}