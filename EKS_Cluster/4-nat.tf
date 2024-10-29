resource "aws_eip" "nat-1" {
  domain = "vpc"

  tags = {
    Name = "eks-nat-1"
  }
}

resource "aws_eip" "nat-2" {
  domain = "vpc"

  tags = {
    Name = "eks-nat-2"
  }
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.nat-1.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "eks-nat1"
  }

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.nat-2.id
  subnet_id     = aws_subnet.public-us-east-1b.id

  tags = {
    Name = "eks-nat-2"
  }

  depends_on = [aws_internet_gateway.igw]
}
