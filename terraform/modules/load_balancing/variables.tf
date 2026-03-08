variable "public_subnet_ids" {
  type = list(string)
}

variable "lb_sg_id" {
  type = string
}

variable "lb_logs_bucket" {
  type = string
}