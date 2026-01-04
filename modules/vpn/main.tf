# Generează cheia privată local
resource "tls_private_key" "vpn" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Creează key pair în AWS din public key
resource "aws_key_pair" "vpn" {
  key_name   = "vpn-key"
  public_key = tls_private_key.vpn.public_key_openssh
}

# Instanță EC2 VPN
resource "aws_instance" "vpn" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.vpn_sg_id]
  key_name                    = aws_key_pair.vpn.key_name   # <-- aici asociem public key
  associate_public_ip_address = true                        # necesar pentru SSH din exterior

  tags = { Name = "vpn-server" }
}

# AMI Ubuntu
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}



# output "private_key_pem" {
#   value     = tls_private_key.vpn.private_key_pem
#   sensitive = true
# }

