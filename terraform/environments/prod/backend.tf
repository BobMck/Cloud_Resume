terraform {
  backend "s3" {
    bucket         ="bobs-tf-state-bucket"
    key            ="cloud-resume-project/terraform.tfstate"
    region         ="eu-west-2"
    dynamodb_table ="terraform-state-lock" 
    encrypt        = true
  }
}