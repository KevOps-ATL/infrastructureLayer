/* resource "aws_nat_gateway" "nat_gateway" {
  for_each = var.nats

  subnet_id     = lookup(var.tomato, each.value.subnet_id, "vpc id not found")
  allocation_id = each.value.aws_eip.nat_gateway1.id

  tags = {
    name = each.key
  }
}

resource "aws_eip" "nat_gateway1" {
  for_each = var.eip

  vpc = lookup(var.eip, each.value.default, "vpc id not found")
}

*/
