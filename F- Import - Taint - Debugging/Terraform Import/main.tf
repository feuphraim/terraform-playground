resource "aws_instance" "ruby" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = var.name
  key_name      = var.key_name
  tags = {
    Name = each.value
  }
}
output "instances" {
  value = aws_instance.ruby
}

#After creating empty bloc, import this instance into the terraform state 
#terraform import aws_instance.jade-mw i-fc3cb1c29803aa7ec
resource "aws_instance" "jade-mw" {
  ami = "ami-082b3eca746b12a89"
  instance_type = "t2.large"
  tags = {
    "Name" = "jade-mw"
  }
}