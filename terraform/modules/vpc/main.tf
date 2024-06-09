provider "aws" {
  region = var.region
}
resource "aws_vpc" "myvpc" {
    cidr_block = var.cidr_block
    enable_dns_support = var.enable_dns_support
    enable_dns_hostnames = var.enable_dns_hostnames
    tags = merge(var.tags,{Name = var.name})  
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.public_subnet_az
  tags = merge(var.tags,{Name = "${var.name}-public"})
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_cidr
    availability_zone = var.private_subnet_az
    tags = merge(var.tags,{Name = "${var.name}-private"})
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.myvpc.id
    tags = merge(var.tags,{Name = "${var.name}-igw"})
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id
  route = [
    {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
        carrier_gateway_id        = null
        core_network_arn          = null
        destination_prefix_list_id = null
        egress_only_gateway_id    = null
        instance_id               = null
        ipv6_cidr_block           = null
        local_gateway_id          = null
        nat_gateway_id            = null
        network_interface_id      = null
        transit_gateway_id        = null
        vpc_endpoint_id           = null
        vpc_peering_connection_id = null
    }
  ]
  tags = merge(var.tags, { Name = "${var.name}-public-rt" })
}

resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
resource "aws_eip" "nat" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = merge(var.tags, { Name = "${var.name}-nat" })
}


resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myvpc.id

  route = [
    {
      cidr_block                = "0.0.0.0/0"
      nat_gateway_id            = aws_nat_gateway.nat.id
      gateway_id = null
      carrier_gateway_id        = null
      core_network_arn          = null
      destination_prefix_list_id = null
      egress_only_gateway_id    = null
      instance_id               = null
      ipv6_cidr_block           = null
      local_gateway_id          = null
      network_interface_id      = null
      transit_gateway_id        = null
      vpc_endpoint_id           = null
      vpc_peering_connection_id = null
    }
  ]

  tags = merge(var.tags, { Name = "${var.name}-private-rt" })
}

resource "aws_route_table_association" "private" {
  subnet_id = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}