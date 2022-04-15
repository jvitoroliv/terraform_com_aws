variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-03ededff12e34e59e"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}