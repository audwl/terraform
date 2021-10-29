resource "aws_route_table" "mjkim_ngart_a" {
  vpc_id  =  aws_vpc.mjkim_vpc.id
 
  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.mjkim_nga_a.id
  }
  tags  = {
    Name  = "mjkim-nga-rta"
  }
}

resource "aws_route_table" "mjkim_ngart_c" {
  vpc_id  =  aws_vpc.mjkim_vpc.id
 
  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.mjkim_nga_c.id
  }
  tags  = {
    Name  = "mjkim-nga-rtc"
  }
}
