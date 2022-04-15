data "aws_ami" "ami" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "Amazon Linux"
}