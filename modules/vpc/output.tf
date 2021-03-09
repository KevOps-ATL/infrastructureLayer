# Outputs here are made available to other modules via lookup()
output "vpc_id" {
  value = { for r in aws_vpc.default : r.tags.name => r.id }
}
