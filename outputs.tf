output "base_fqdn" {
  value       = aws_route53_record.application_record.fqdn
  description = "Base Full Qualified DNS Name"
}

output "logs_endpoint" {
  value       = "http://logs${replace(aws_route53_record.application_record.fqdn, "*", "")}"
  description = "Logs URL"
}

output "metrics_endpoint" {
  value       = "http://metrics${replace(aws_route53_record.application_record.fqdn, "*", "")}"
  description = "Metrics URL"
}

output "manager_endpoint" {
  value       = "http://manager${replace(aws_route53_record.application_record.fqdn, "*", "")}"
  description = "Manager URL"
}
