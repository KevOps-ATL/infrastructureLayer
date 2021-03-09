# Outputs

output "vpc_id" {
  value = { for r in aws_vpc.default : r.tags.name => r.id }
}
