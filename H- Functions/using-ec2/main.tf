#Create an EC2 Instance with the resource name mario_servers

resource "aws_instance" "mario_servers" {
  ami = var.ami
  instance_type = var.name == "tiny" ? var.small : var.large
  tags = {
    name = var.name
  }
}