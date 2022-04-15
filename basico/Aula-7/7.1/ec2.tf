resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type

  tags = {
    Name = "Data source"
  }
}