terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ""
    }
  }
}

resource "aws_ebs_volume" "soft-volume" {
  availability_zone = "us-west-2a"
  size              = 15
  tags = {
    Name = "temporary"
  }
}
