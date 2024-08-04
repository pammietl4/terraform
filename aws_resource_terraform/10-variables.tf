variable "region" {}
variable "availability_zone" {}
variable "cidr_block" {}
variable "public_cidr_block" {}
variable "private_cidr_block" {}
variable "instance_type" {}
variable "ami_id" {}
variable "key_pair" {}
# variable "ami" {}
# variable "subnet_id" {}
# variable "vpc_id" {}
# variable "sg_id" {}
# variable "name" {}
# variable "tag" {}
# variable "key" {}
# variable "key_name" {}
# variable "value" {}
# variable "env" {}
# variable "owner" {}
variable "vpc_name" {}
variable "public_subnet_name" {}
variable "private_subnet_name" {}
variable "igw_name" {}
variable "public_route_table_name" {}
variable "sg_name" {}


# ########### Presidence  (Least to hightest priorty) ###################

# #note: you can pass variables in different ways ############

# 1 priority -  passing variable through command lines  -- terraform apply -var "vpc_name=genpact-hafeezpet-vpc"
# 2 priority -  files name which contain *.auto.tfvars
# 3 priority -  terrafom.tfvars
# 4 priority -  environment variables --> var.vpc_name = "hafeezpet-vpc"
