resource "aws_subnet" "default" {
  for_each = var.subs

  vpc_id            = lookup(var.vpc_id, each.value.vpc_id, "vpc id not found")
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    name = each.key
  }
}
