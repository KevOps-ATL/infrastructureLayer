resource "aws_nat_gateway" "natgw" {
  for_each = var.gateway

  subnet_id = lookup(var.vpc_id, each.value.vpc_id, "vpc id not found")

  tags = {
    name = each.key
  }
}

resource "aws_eip" "nat_gateway1" {
  for_each = var.eip

  vpc = lookup(var.eip, each.value.default, "vpc id not found")
}


