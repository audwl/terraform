resource "aws_lb" "mjkim_lb" {
    name = "mjkim-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.mjkim_websg.id]
    subnets = [aws_subnet.mjkim_puba.id,aws_subnet.mjkim_pubc.id]
    
    tags= {
      Name = "mjkim-alb"
    }

  
}
