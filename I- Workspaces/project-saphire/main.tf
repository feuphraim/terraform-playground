# Adhere to the following specifications: module name: payroll_app
# a. app_region - use the values from variable called region b. ami - use the values from the variable called ami
# The values for these two arguments should be selected based on the workspace you are on.

module "payroll_app" {
  source = "../modules/payroll-app"
  app_region = var.region[terraform.workspace]
  ami = var.ami[terraform.workspace]
}

#Alternative kk
/* module "payroll_app" {
  source = "/root/terraform-projects/modules/payroll-app"
  app_region = lookup(var.region, terraform.workspace)
  ami        = lookup(var.ami, terraform.workspace)
} */