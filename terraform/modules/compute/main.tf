#############################
# Compute
#############################
resource "aws_instance" "cloud-resume-instance" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "cloud-resume-instance"
  }
}

#############################
# Autoscaling Group
#############################
resource "aws_launch_template" "Cloud_Resume_Launch_Template" {
  name_prefix   = "cloud-resume-launch-template"
  image_id      = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t3.micro"
}

resource "aws_autoscaling_group" "Cloud_Resume_Autoscaling_Group" {
  availability_zones = ["eu-west-2a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Cloud_Resume_Launch_Template.id
    version = "$Latest"
  }
}