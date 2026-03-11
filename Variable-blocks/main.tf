resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
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
}

# 3. Launch the EC2 Instance
resource "aws_instance" "web_server" {
  ami           = var.amiid
  instance_type = var.instance_type
  key_name      = var.keyname # Added this to use your singapore key
  count         = var.counts

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    
    Name = "webserver"
  }
}
