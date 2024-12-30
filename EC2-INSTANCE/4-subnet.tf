# subnet.tf

resource "aws_subnet" "public" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)

  tags = {
    Name = "EC2-public-subnet-${count.index + 1}"
  }
}
