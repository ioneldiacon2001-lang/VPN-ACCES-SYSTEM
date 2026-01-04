
# Outputs
output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_sg" {
  value = aws_security_group.vpc_sg
}


