resource "aws_vpc" "default" {

  for_each = var.vpc_map # this line tells the resource that we want to iterate for each item in the map

  cidr_block = each.value.cidr_block # as the system iterates each cidr block from the respective map will be used

  tags = {
    name = each.key
  }

}
