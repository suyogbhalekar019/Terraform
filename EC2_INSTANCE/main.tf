provider "aws" {
    region = "us-east-1"                    # Set your desired AWS region
}

resource "aws_instance" "MyInstance" {
    ami           = "ami-0c55b159cbfafe1f"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"              # Change to your desired instance type

    tags = {
      Name = "InstanceName"                 # This sets the Name Tag
    }
}
