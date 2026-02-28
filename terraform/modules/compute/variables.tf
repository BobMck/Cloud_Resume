variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to launch the instance into"
}