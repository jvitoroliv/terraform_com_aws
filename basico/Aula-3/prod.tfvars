environment   = "Prod"
aws_region    = "us-east-1"
aws_profile   = "default"
instance_ami  = "ami-03ededff12e34e59e"
instance_type = "t3.micro"

default = {
  Name    = "Ubuntu"
  Project = "Curso AWS com Terraform"
  Env     = "Production"
}