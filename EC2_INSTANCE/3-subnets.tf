resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name"                            = "custom-private-us-east-1a"
    "kubernetes.io/role/internal-elb" = "1"      # discover the subnets over private LB
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name"                            = "custom-private-us-east-1b"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "custom-public-us-east-1a"
    "kubernetes.io/role/elb"     = "1"
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "custom-public-us-east-1b"
    "kubernetes.io/role/elb"     = "1"
  }
}
