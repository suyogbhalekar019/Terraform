# instances.tf

resource "aws_instance" "main" {
  count         = var.instance_count
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = element(aws_subnet.public[*].id, count.index % length(aws_subnet.public))
  security_groups = [
    aws_security_group.main.name
  ]

  tags = {
    Name = "Instance-${count.index + 1}"
  }
}
