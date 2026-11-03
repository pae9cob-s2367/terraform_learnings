output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "availability_zones" {
  value = [
    var.aws_az1,
    var.aws_az2,
    var.aws_az3
  ]
}

output "public_subnet_1_id" {
  value = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_2.id
}

output "public_subnet_3_id" {
  value = aws_subnet.public_3.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_2.id
}

output "private_subnet_3_id" {
  value = aws_subnet.private_3.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}


output "nat_gateway_id" {
  value = aws_nat_gateway.main.id
}

output "elastic_ip" {
  value = aws_eip.nat.public_ip
}

output "elastic_ip_allocation_id" {
  value = aws_eip.nat.id
}


output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}

output "public_route_id" {
  value = aws_route.public_internet_access.id
}

output "private_route_id" {
  value = aws_route.private_nat_access.id
}
output "public_association_1_id" {
  value = aws_route_table_association.public_1.id
}

output "public_association_2_id" {
  value = aws_route_table_association.public_2.id
}

output "public_association_3_id" {
  value = aws_route_table_association.public_3.id
}

output "private_association_1_id" {
  value = aws_route_table_association.private_1.id
}

output "private_association_2_id" {
  value = aws_route_table_association.private_2.id
}

output "private_association_3_id" {
  value = aws_route_table_association.private_3.id
}
