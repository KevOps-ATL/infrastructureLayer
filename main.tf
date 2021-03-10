
module "aws_network" {
  source  = "./modules/vpc"
  vpc_map = var.vpc

}


module "subnets" {
  source = "./modules/subnets"
  subs   = var.subnets
  vpc_id = module.aws_network.vpc_id

}

module "iGW" {
  source  = "./modules/iGW"
  gateway = var.gateway
  vpc_id  = module.aws_network.vpc_id
}

/* module "natgw" {
  source  = "./modules/natgw"
  subnet_id = module.subnets.subnet_id
  
}
*/
