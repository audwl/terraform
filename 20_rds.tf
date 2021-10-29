resource "aws_db_instance" "mjkim_mydb" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "mydb"
  identifier = "mydb"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql5.7"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.mjkim_dbsn.id
  skip_final_snapshot = true
  tags = {
      Name = "mjkim-mydb"
  }
}

resource "aws_db_subnet_group" "mjkim_dbsn" {
  name  =   "mjkim-dbsb-group"
  subnet_ids = [aws_subnet.mjkim_pria.id,aws_subnet.mjkim_pric.id]
  tags = {
      Name = "mjkim-dbsb-group"
  }
}
