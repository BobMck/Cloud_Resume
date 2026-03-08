#############################
# Load Balancer
#############################
resource "aws_lb" "cloud-resume-lb" {
  name               = "cloud-resume-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.lb_sg_id]
  subnets            = var.public_subnet_ids

  enable_deletion_protection = false

  access_logs {
    bucket  = var.lb_logs_bucket
    prefix  = "lb-logs"
    enabled = true
  }

  tags = {
    Environment = "prod"
  }
}