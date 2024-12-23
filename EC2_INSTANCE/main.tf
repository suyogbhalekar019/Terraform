provider "aws" {
    region = "us-east-1"                    # Set your desired AWS region
}

resource "aws_instance" "MyInstance" {
    ami           = "ami-0c55b159cbfafe1f"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"              # Change to your desired instance type

    count = 3

    tags = {
      Name = "InstanceName-${count.index}"                 # This sets the Name Tag
    }

    vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    subnet_ids = [
      aws_subnet.public-us-east-1a.id,
      aws_subnet.public-us-east-1b.id
      ]
    }
}
