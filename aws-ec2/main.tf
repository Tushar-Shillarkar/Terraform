

resource "aws_instance" "myserver" {
  ami = "ami-0aba19e56f3eaec05"
  instance_type = "c7i-flex.large"
  tags = {
    Name = "myserver" 
  }
}


