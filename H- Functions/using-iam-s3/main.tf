#This variable contains the developers' names for project-sonic with the names separated by a :.
#Using this variable and the count meta-argument, create IAM users for all developers. Write the resource block and name it as a cloud in the main.tf file.

resource "aws_iam_user" "cloud" {
  for_each = toset(split(":", var.cloud_users))
  name = each.value
}


/* #Alternative kk
resource "aws_iam_user" "cloud" {
     name = split(":",var.cloud_users)[count.index]
     count = length(split(":",var.cloud_users))

}
*/