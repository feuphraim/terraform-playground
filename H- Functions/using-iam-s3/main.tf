#This variable contains the developers' names for project-sonic with the names separated by a :.
#Using this variable and the count meta-argument, create IAM users for all developers. Write the resource block and name it as a cloud in the main.tf file.

resource "aws_iam_user" "cloud" {
  for_each = toset(split(":", var.cloud_users))
  name = each.value
}

/* #Alternative kk
resource "aws_iam_user" "cloud" {
    count = length(split(":", var.cloud_users))
    name = split(":", var.cloud_users)[count.index]
  
}
*/

#Create an additional resource called upload_sonic_media to upload the files listed in the variable called media to this bucket.
resource "aws_s3_object" "name" {
  bucket = aws_s3_bucket.sonic_media.bucket
  for_each = var.media
  key = each.value
  source = each.value
}