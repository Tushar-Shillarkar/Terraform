resource "aws_instance" "nginx-server" {
  ami = "ami-0aba19e56f3eaec05"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.pub-subnet.id
  vpc_security_group_ids = [ aws_security_group.my-sg.id ]
  associate_public_ip_address = true

  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install nginx -y
  sudo systemctl start nginx   
  sudo systemctl enable nginx         
  EOF

  tags = {
    Name = "myserver" 
  }
}