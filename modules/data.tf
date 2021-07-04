data "aws_ami" "server-ami" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.machine-ami]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["self"]
}

data "template_file" "bootstrap-data" {
  template = file("${path.module}/${var.bootstrap-file-name}-${"bootstrap"}.txt")
}

