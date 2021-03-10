resource "aws_vpc" "default" {

  for_each = var.vpc_map

  cidr_block = each.value.cidr_block

  tags = {
    name = each.key
  }

}
