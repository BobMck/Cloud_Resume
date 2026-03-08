#############################
# s3 bucket for lb logs
#############################
resource "aws_s3_bucket" "lb_logs" {
  bucket = "cloud-resume-lb-logs"

  tags = {
    Name        = "cloud-resume-lb-logs"
    Environment = "prod"
  }
}