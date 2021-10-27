resource "aws_vpc" "mjkim-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "mjkim-vpc"
    }
}