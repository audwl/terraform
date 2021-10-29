resource "aws_lb_listener" "mjkim_lblist" {
    load_balancer_arn = aws_lb.mjkim_lb.arn
    port = 80
    protocol = "HTTP"
    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.mjkim_lbtg.arn
      }

  
}