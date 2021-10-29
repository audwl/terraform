resource "aws_placement_group" "mjkim_pg" {
    name = "mjkim-pg"
    strategy = "cluster"
}
resource "aws_autoscaling_group" "mjkim_atsg" {
    name = "mjkim-atsg"
    min_size = 2
    max_size = 8
    health_check_grace_period = 300
    health_check_type = "ELB"
    desired_capacity = 2
    force_delete = true
    launch_configuration = aws_launch_configuration.mjkim_lacf.name
    vpc_zone_identifier = [aws_subnet.mjkim_puba.id,aws_subnet.mjkim_pubc.id]
}
