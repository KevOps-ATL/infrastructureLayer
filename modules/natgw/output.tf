output "eip_id" {
  value = { for r in aws_eip.nat_gateway1 : r.id => r.id }
}
