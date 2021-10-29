resource "aws_autoscaling_attachment" "mjkim_atatt" {
  autoscaling_group_name = aws_autoscaling_group.mjkim_atsg.id
  alb_target_group_arn   = aws_lb_target_group.mjkim_lbtg.arn
}
