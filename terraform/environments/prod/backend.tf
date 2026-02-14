terraform {
  backend "s3" {
    bucket         ="bobs-tf-state-bucket"
    key            ="AWS-DEVOPS-PROJECT/terraform.tfstate"
    region         ="eu-west-2"
    dynamodb_table ="terraform-state-lock" 
    encrypt        = true
  }
}