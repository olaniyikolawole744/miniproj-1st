resource "aws_instance" "server-prototype" {
  ami                    = data.aws_ami.server-ami.id
  instance_type          = var.instance-type
  key_name               = var.key-name
  availability_zone      = var.availability-zone
  vpc_security_group_ids = [aws_security_group.server-sg.id]
  user_data              = data.template_file.bootstrap-data.template
  tags = {
    Name        = "${var.purpose} server ${var.index}"
    Environment = var.environment
    Role        = var.role
  }
}


