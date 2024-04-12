resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "${var.project-name}-pub-subnet-1a"
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "${var.project-name}-pub-subnet-1b"
      "kubernetes.io/role/elb" = 1
    }
  )
}

#"10.0.0.0/16"
#"10.0.1.0/24"
#"10.0.2.0/24"

resource "aws_route_table_association" "eks_rtb_assoc_1a" {
  subnet_id      = aws_subnet.eks_subnet_public_1a.id
  route_table_id = aws_route_table.eks_privat_rout_table_1a.id
}

resource "aws_route_table_association" "eks_rtb_assoc_1b" {
  subnet_id      = aws_subnet.eks_subnet_public_1b.id
  route_table_id = aws_route_table.eks_privat_rout_table_1b.id
}