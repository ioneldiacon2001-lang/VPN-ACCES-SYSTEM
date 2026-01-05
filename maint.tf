# Module VPN 
module "vpn" {
  source = "./modules/vpn"

  ami_id           = local.vpn_ami
  instance_type    = local.vpn_instance_type
  key_name         = local.key_name
  public_subnet_id = module.network.public_subnet_id
  vpn_sg_id        = module.network.vpc_sg.id
}

# Module Network
module "network" {
  source = "./modules/network"

  vpc_cidr       = local.vpc_cidr
  public_subnet  = local.public_subnet
  private_subnet = local.private_subnet

  # ✅ new: needed for private subnet route to VPN clients (10.8.0.0/24)
  vpn_primary_eni_id = module.vpn.vpn_primary_eni_id
}

# Module Aplicatie
module "app" {
  source = "./modules/app"

  ami_id            = local.vpn_ami
  instance_type     = local.vpn_instance_type
  key_name          = local.key_name
  private_subnet_id = module.network.private_subnet_id
  vpc_sg_id         = module.network.vpc_sg.id
}
