resource "aws_iam_user" "users" {
  # name = "mary"
  name = count.index
  count = length(var.project-sapphire-users)
}

variable "project-sapphire-users" {
     type = list(string)
     default = [ "mary", "jack", "jill", "mack", "buzz", "mater"]
}