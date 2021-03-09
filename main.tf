
module "aws_network" {
  source  = "./modules/vpc"
  vpc_map = var.vpc # Map of resource arguments from variables.tf

}


module "subnets" {
  source = "./modules/subnets"
  subs   = var.subnets               # Resource arguments from variables.tf
  vpc_id = module.aws_network.vpc_id # Variable used to pass vpc_id

}

module "iGW" {
  source  = "./modules/iGW"
  gateway = var.gateway               # Map of resource arguments from variables.tf
  vpc_id  = module.aws_network.vpc_id # passing the vpc id again
}


/*module "natgw" {
  source  = "./modules/natgw"
  vpc_map = module.aws_network.vpc_id
  eip     = 
}
*/
