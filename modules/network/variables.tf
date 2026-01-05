variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet" {
  description = "CIDR for public subnet"
  type        = string
}

variable "private_subnet" {
  description = "CIDR for private subnet"
  type        = string
}
variable "vpn_primary_eni_id" {
  description = "Primary ENI ID of the VPN instance (route target for 10.8.0.0/24)"
  type        = string
}