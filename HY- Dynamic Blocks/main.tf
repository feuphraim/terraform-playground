resource "aws_vpc" "backend-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "backend-vpc"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id     = aws_vpc.backend-vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private-subnet"
  }
}

resource "aws_security_group" "backend-sg" {
  name   = "backend-sg"
  vpc_id = aws_vpc.backend-vpc.id

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port

    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
