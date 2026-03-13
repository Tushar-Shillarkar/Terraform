# Security Groups
resource "aws_security_group" "webserversg" {
  name        = "webserver-sg"
  description = "Allow HTTP and outbound traffic"
  vpc_id      = var.vpc_id

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
#instance
resource "aws_instance" "webserver" {
 # count                   = var.countno
  ami                     = var.amiid
  instance_type           = var.instancetype
  key_name                = var.keyname
  disable_api_termination = var.disable_api_termination
  subnet_id = var.subnet_id
  vpc_security_group_ids  = [aws_security_group.webserversg.id]

  tags = {
    Name       = "webserver"
  }
}





