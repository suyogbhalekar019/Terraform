locals {
  cluster_name = "suyog-eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 5
  special = false
}

resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    Name = "eks-vpc"
  }
}
