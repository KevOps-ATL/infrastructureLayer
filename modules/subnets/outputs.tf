output "subnet_id" {
  value = { for r in aws_subnet.default : r.id => r.id }
}
