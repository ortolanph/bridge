// Endpoint Service
resource "aws_vpc_endpoint_service" "bridge_service" {
  provider = aws.production_account

  acceptance_required = false
  network_load_balancer_arns = [
    aws_lb.bridge.arn
  ]

  tags = {
    Name = "${var.project_name}-bridge-service"
  }
}

// Endpoint Service Principal
resource "aws_vpc_endpoint_service_allowed_principal" "bridge_service_principal" {
  provider = aws.production_account

  principal_arn           = var.service_allowed_principal
  vpc_endpoint_service_id = aws_vpc_endpoint_service.bridge_service.id
}
