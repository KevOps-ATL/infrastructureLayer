resource "aws_internet_gateway" "gw" {
  for_each = var.gateway

  vpc_id = lookup(var.vpc_id, each.value.vpc_id, "vpc id not found")

  tags = {
    name = each.key
  }
}
