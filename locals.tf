locals {
   vpc_cidr            ="10.0.0.0/16" 
   public_subnet       ="10.0.1.0/24" 
   private_subnet      = "10.0.2.0/24" 
   vpn_instance_type   = "t3.micro" 
   key_name            = "mykey" 
   vpn_ami             = "ami-0a5a4f5a8c4c9a3b7"
   aws_region          =  "eu-central-1"
}