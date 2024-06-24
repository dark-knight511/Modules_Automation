module "VPC" {
  source              = "git::https://github.com/dark-knight511/Modules_Automation.git//Module_VPC"
  vpc_cidr_block      = var.vpc_cidr_block
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones  = var.availability_zones
  name_tags_vpc       = var.name_tags_vpc
  name_tags_subnet    = var.name_tags_subnet
  name_tags           = var.name_tags
}






