output "vpc_id"{
    description = "the id of vpc"
    value = aws_vpc.myvpc.id
}

output "public_subnet_id" {
  description = "public subnet id"
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "private subnet id"
  value = aws_subnet.private.id
}

output "internet_gateway_id" {
  description = "internet gateway id"
  value = aws_internet_gateway.igw.id
}

output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "The ID of the private route table"
  value       = aws_route_table.private.id
}