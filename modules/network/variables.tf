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
