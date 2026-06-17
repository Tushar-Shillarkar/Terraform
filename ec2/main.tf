resource "aws_instance" "nginx-server" {
  ami = "ami-0aba19e56f3eaec05"
  instance_type = "t3.micro"
  
  root_block_device {
    delete_on_termination = true
    volume_size = 20
    volume_type = "gp2"
  }

  tags = {
    Name = "Sample-server" 
  }
}