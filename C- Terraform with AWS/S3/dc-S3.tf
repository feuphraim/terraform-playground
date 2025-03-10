#main.tf  ----------------------

resource "aws_s3_bucket" "dc_bucket" {
  bucket = "dc-is-better-than-marvel"

}

#providers.tf  ------------------

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.0"
    }
  }
}

provider "aws" {
  region                      = var.region
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3                       = "http://aws:4566"
  }
}



#variables.tf ----------

variable "region" {
}
