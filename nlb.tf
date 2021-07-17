// Network Load Balancer
resource "aws_lb" "bridge" {
  provider           = aws.production_account
  name               = "${var.project_name}-bridge"
  internal           = true
  load_balancer_type = "network"

  subnets      = var.source_subnet_ids
  idle_timeout = 60
}

// Network Load Balancer Listeners
// HTTP Listener
resource "aws_lb_listener" "bridge_http_listener" {
  provider          = aws.production_account
  load_balancer_arn = aws_lb.bridge.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.bridge_http_target_group.arn
  }
}

// HTTP Listener Target Group
resource "aws_alb_target_group" "bridge_http_target_group" {
  provider = aws.production_account
  name     = "${var.project_name}-bridge-http-tg"
  protocol = "TCP"
  port     = 80
  vpc_id   = var.source_vpc_id
}

// HTTP Listener Target Group Attachment
resource "aws_alb_target_group_attachment" "bridge_http_tg_attachment" {
  provider         = aws.production_account
  target_group_arn = aws_alb_target_group.bridge_http_target_group.arn
  target_id        = var.source_instance_id
}
