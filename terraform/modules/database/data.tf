data "aws_ssm_parameter" "super-secret-password" {
  name = var.super_secret_password_ssm_parameter_name
}