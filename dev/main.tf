module "vpc" {
  source = "../modules/services/vpc"
}
module "vm" {
  source                 = "../modules/services/virtual_machine"
  vpc_id                 = module.vpc.vpc_id
  public_subnet_id       = module.vpc.public_subnet_id
  private_subnet_id      = module.vpc.private_subnet_id
  name                   = var.name
  image_family           = var.image_family
  machine_type           = var.machine_type
  zone                   = var.zone
  public_instance_count  = var.public_instance_count
  private_instance_count = var.private_instance_count
}