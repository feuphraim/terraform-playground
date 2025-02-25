resource "local_sensitive_file" "name" {
    for_each = toset(var.users)
    filename = each.value
    content = var.content

}
variable "users" {
    type = list
    default = [ "/root/user10", "/root/user11", "/root/user12", "/root/user10"]
}
variable "content" {
    default = "password: S3cr3tP@ssw0rd"
  
}