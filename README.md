# How to run this code

# change to vars directory
cd  /Cloud-Resume-Project/terraform/environments/prod

# Plan an check output to understand what will be built
terraform plan -var-file=terraform.tfvars 

# Apply if you are happy and then check it in AWS to see if it is working or you have. any issues
terraform apply -var-file=terraform.tfvars

# Destroy once you have fnished any engineering or testing to save costs
terraform destroy -var-file=terraform.tfvars

# This document will be updated as the project progresses