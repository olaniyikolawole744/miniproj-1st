resource "aws_security_group" "server-sg" {
  name        = "${var.purpose}-${var.index}"
  description = "${var.purpose} Server security Group"

  ingress {
    description = "${var.purpose} Server Inbound Rule"
    from_port   = var.inboundport
    to_port     = var.inboundport
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "${var.purpose} Server Inbound Rule"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.purpose
  }
}



