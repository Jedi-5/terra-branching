/* __version__   = "1.0"
   __author__    = "Kanishk"
   __email__     = "email@kanis.hk"
   __copyright__ = "(ɔ) 2024"  */


module "vpc_module" {
  source = "./modules/vpc"

  key_name             = var.key_name
  vpc_cidr             = var.vpc_cidr
  project_name         = var.project_name
  vpc_name             = var.vpc_name
  vpc_enable_nat       = var.vpc_enable_nat
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  db_subnet_cidrs      = var.db_subnet_cidrs
  rt_cidr              = var.rt_cidr
  region               = var.region
  instance_type        = var.instance_type
  instance_name        = var.instance_name
  instance_ami         = var.instance_ami
  eip_allocation       = var.eip_allocation
  environment          = var.environment
  vpc_azs              = var.vpc_azs
  vpc_enable_vpn       = var.vpc_enable_vpn
  security_group       = var.security_group
}
