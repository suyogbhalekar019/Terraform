resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "eks-nat"
  }
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "eks-nat1"
  }

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public-us-east-1b.id

  tags = {
    Name = "eks-nat2"
  }

  depends_on = [aws_internet_gateway.igw]
}
