resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-vpc"
  }

}
resource "aws_subnet" "pvt-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.my_vpc.id
  tags = {
    Name = "pvt-subnet"
  }
}

resource "aws_subnet" "pub-subnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id     = aws_vpc.my_vpc.id
  tags = {
    Name = "pub-subnet"
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "my-igw"
  }

}
resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
  tags = {
    Name = "my-rt"
  }
}

resource "aws_route_table_association" "pub-sub" {
  route_table_id = aws_route_table.my-rt.id
  subnet_id      = aws_subnet.pub-subnet.id

}

resource "aws_instance" "myserver" {
  ami = "ami-0aba19e56f3eaec05"
  instance_type = "c7i-flex.large"
  subnet_id = aws_subnet.pub-subnet.id
  tags = {
    Name = "myserver" 
  }
}