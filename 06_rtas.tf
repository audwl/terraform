resource "aws_route_table_association" "mjkim_rtas_a" {
    subnet_id = aws_subnet.mjkim-puba.id
    route_table_id = aws_route_table.mjkim_rt.id
}
resource "aws_route_table_association" "mjkim_rtas_c" {
    subnet_id = aws_subnet.mjkim-pubc.id
    route_table_id = aws_route_table.mjkim_rt.id
}