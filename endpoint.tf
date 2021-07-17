// Endpoint
resource "aws_vpc_endpoint" "bridge_endpoint" {
  provider = aws.internal_account

  vpc_id     = var.target_vpc_id
  subnet_ids = var.target_subnet_ids
  security_group_ids = [
    aws_security_group.bridge_endpoint_security_group.id
  ]

  service_name      = aws_vpc_endpoint_service.bridge_service.service_name
  auto_accept       = true
  vpc_endpoint_type = "Interface"

  tags = {
    Name = "${var.project_name}-bridge-endpoint"
  }

  depends_on = [
    aws_vpc_endpoint_service.bridge_service
  ]
}

// Security Groups to only allow HTTP and SSH Traffic
resource "aws_security_group" "bridge_endpoint_security_group" {
  provider = aws.internal_account

  name   = "${var.project_name}-bridge-endpoint-sg"
  vpc_id = var.target_vpc_id

  ingress {
    description = "HTTP Connection"
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-bridge-endpoint-sg"
  }
}

// Route 53 Record
resource "aws_route53_record" "application_record" {
  provider = aws.internal_account
  name     = "*"
  type     = "CNAME"
  zone_id  = var.target_hosted_zone_id
  records = [
    aws_vpc_endpoint.bridge_endpoint.dns_entry[0].dns_name
  ]
  ttl = 300
}
