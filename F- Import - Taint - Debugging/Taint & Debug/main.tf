resource "aws_instance" "ProjectB" {
    ami = "ami-0c9bfc21ac5bf10eb"
    instance_type = "t2.large"
    tags = {
        Name = "projectb_webserver"
        Description = "Oversized Webserver"
    }
  
}
