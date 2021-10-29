resource "aws_internet_gateway" "mjkim_ig" {
  vpc_id = aws_vpc.mjkim_vpc.id
  tags = {
    Name = "mjkim-ig"
  }
}
