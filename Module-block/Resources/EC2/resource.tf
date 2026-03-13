
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
#instance
resource "aws_instance" "webserver" {
 # count                   = var.countno
  ami                     = var.amiid
  instance_type           = var.instancetype
  key_name                = var.keyname
  disable_api_termination = var.disable_api_termination
  vpc_security_group_ids  = [data.aws_security_group.webserversg.id]

  tags = {
    Name       = "webserver"
  }
}
#OutPut-Block
output "instance_pub_id"{
  value = aws_instance.webserver.public_ip
}

output "instance_pvt_id"{
  value = aws_instance.webserver.private_ip
}
#data-block
data "aws_security_group" "webserversg"{
  name = "mysg"
}




