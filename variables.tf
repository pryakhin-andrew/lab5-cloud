variable "region" {
  type    = string
  default = "us-east-1"
}

variable "prefix" {
  description = "Name prefix for every resource; ALB name must stay <= 32 chars"
  type        = string
  default     = "lab11-andrey"
}

variable "vpc_cidr" {
  type    = string
  default = "10.11.0.0/16"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "desired_capacity" {
  description = "How many web servers the ASG keeps running"
  type        = number
  default     = 3

  validation {
    condition     = var.desired_capacity >= 1 && var.desired_capacity <= 3
    error_message = "desired_capacity must be between 1 and 3."
  }
}
