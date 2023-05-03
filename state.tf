terraform {
  backend "s3" {
    bucket = "terraform-ka"
    key    = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}