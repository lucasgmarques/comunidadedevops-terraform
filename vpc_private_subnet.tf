resource "aws_subnet" "subnet_eks_private_1a" {
  vpc_id            = aws_vpc.vpc_eks.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    local.tags,
    {
      Name                              = "${var.project_name}-priv-subnet-1a",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "subnet_eks_private_1b" {
  vpc_id            = aws_vpc.vpc_eks.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    local.tags,
    {
      Name                              = "${var.project_name}-priv-subnet-1b",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_route_table_association" "eks_rtb_assoc_priv_1a" {
  subnet_id      = aws_subnet.subnet_eks_private_1a.id
  route_table_id = aws_route_table.eks_private_route_table_1a.id
}

resource "aws_route_table_association" "eks_rtb_assoc_priv_1b" {
  subnet_id      = aws_subnet.subnet_eks_private_1b.id
  route_table_id = aws_route_table.eks_private_route_table_1b.id
}
