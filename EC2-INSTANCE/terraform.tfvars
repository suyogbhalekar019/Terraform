# terraform.tfvars

aws_region          = "us-east-1"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
instance_ami        = "ami-0c55b159cbfafe1f"
instance_type       = "t2.micro"
instance_count      = 3
