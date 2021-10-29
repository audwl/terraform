resource "aws_route_table_association" "mjkim_rtas_a" {
    subnet_id = aws_subnet.mjkim_puba.id
    route_table_id = aws_route_table.mjkim_rt.id
}
resource "aws_route_table_association" "mjkim_rtas_c" {
    subnet_id = aws_subnet.mjkim_pubc.id
    route_table_id = aws_route_table.mjkim_rt.id
}
