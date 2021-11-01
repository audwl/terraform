 #가용영역 a의 Public Subnet
resource "aws_subnet" "mjkim_puba" {
    vpc_id =aws_vpc.mjkim_vpc.id  
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
      Name = "mjkim-puba"
    }
  
}
#가용영역 a의 Private Subnet
resource "aws_subnet" "mjkim_pria" {
    vpc_id = aws_vpc.mjkim_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
      Name = "mjkim-pria"
    }
  
}
# 가용영역 c의 Public Subnet
resource "aws_subnet" "mjkim_pubc" {
    vpc_id = aws_vpc.mjkim_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
      Name = "mjkim-pubc"
    }
  
}
#가용영역 c의 Private Subnet
resource "aws_subnet" "mjkim_pric" {
    vpc_id = aws_vpc.mjkim_vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
      Name = "mjkim-pric"
    }
  
}
  resource "aws_subnet" "mjkim_pridba" {
  vpc_id            = aws_vpc.mjkim_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "mjkim-pridba"
  }
}
resource "aws_subnet" "mjkim_pridbc" {
  vpc_id            = aws_vpc.mjkim_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "mjkim-pridbc"
  }
}
