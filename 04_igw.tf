resource "aws_internet_gateway" "mjkim-ig" {
  vpc_id = aws_vpc.mjkim-vpc.id
  tags = {
    Name = "mjkim-ig"
  }
}