# terraform.tfvars

aws_region          = "us-east-1"
vpc_cidr            = "12.0.0.0/16"
public_subnet_cidrs = ["12.0.1.0/24", "12.0.2.0/24"]
instance_ami        = "ami-0e2c8caa4b6378d8c"
instance_type       = "t2.medium"
instance_count      = 3
hostnames           = ["Jenkins-server", "SonarQube-server", "Nexus-server"]
