resource "aws_route_table_association" "mjkim_ngartas_a" {
    subnet_id = aws_subnet.mjkim_pria.id
    route_table_id = aws_route_table.mjkim_ngart_a.id
}
resource "aws_route_table_association" "mjkim_ngartas_c" {
    subnet_id = aws_subnet.mjkim_pric.id
    route_table_id = aws_route_table.mjkim_ngart_c.id
}
