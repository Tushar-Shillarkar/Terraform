# Security Group
resource "aws_security_group" "webserversg" {
  name        = "webserver-sg"
  description = "Allow HTTP and outbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "webserver" {
  count                   = var.countno
  ami                     = data.aws_ami.amazon_linux.id
  instance_type           = var.instancetype
  key_name                = var.keyname
  disable_api_termination = var.disable_api_termination
  

  tags = {
    Name       = "webserver"
  }
}

