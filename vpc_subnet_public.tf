resource "aws_subnet" "subnet_eks_public_1a" {
  vpc_id                  = aws_vpc.vpc-eks.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "comunidadedevops-subnet-1a",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "subnet_eks_public_1b" {
  vpc_id                  = aws_vpc.vpc-eks.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "comunidadedevops-subnet-1b",
      "kubernetes.io/role/elb" = 1
    }
  )
}