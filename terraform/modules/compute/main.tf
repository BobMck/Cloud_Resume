resource "aws_instance" "cloud-resume-instance" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "cloud-resume-instance"
  }
}