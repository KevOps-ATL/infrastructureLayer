# These outputs will be printed when terraform apply is complete

output "vpc_id" {
  value = module.aws_network.vpc_id
}

output "subnet_id" {
  value = module.subnets.subnet_id
}
