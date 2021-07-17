## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.42.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.42.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.internal_account"></a> [aws.internal\_account](#provider\_aws.internal\_account) | 3.42.0 3.42.0 |
| <a name="provider_aws.production_account"></a> [aws.production\_account](#provider\_aws.production\_account) | 3.42.0 3.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_alb_target_group.bridge_http_target_group](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/alb_target_group) | resource |
| [aws_alb_target_group_attachment.bridge_http_tg_attachment](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/alb_target_group_attachment) | resource |
| [aws_lb.bridge](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/lb) | resource |
| [aws_lb_listener.bridge_http_listener](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/lb_listener) | resource |
| [aws_route53_record.application_record](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/route53_record) | resource |
| [aws_security_group.bridge_endpoint_security_group](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/security_group) | resource |
| [aws_vpc_endpoint.bridge_endpoint](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint_service.bridge_service](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/vpc_endpoint_service) | resource |
| [aws_vpc_endpoint_service_allowed_principal.bridge_service_principal](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/vpc_endpoint_service_allowed_principal) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region that the bridge should be deployed to. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project name | `string` | n/a | yes |
| <a name="input_service_allowed_principal"></a> [service\_allowed\_principal](#input\_service\_allowed\_principal) | The principal that should be allowed to access the Endpoint Service | `string` | n/a | yes |
| <a name="input_source_instance_id"></a> [source\_instance\_id](#input\_source\_instance\_id) | The instance id of the source side | `string` | n/a | yes |
| <a name="input_source_subnet_ids"></a> [source\_subnet\_ids](#input\_source\_subnet\_ids) | The Source Subnets Ids | `list(string)` | n/a | yes |
| <a name="input_source_vpc_id"></a> [source\_vpc\_id](#input\_source\_vpc\_id) | The Source VPC Id | `string` | n/a | yes |
| <a name="input_target_hosted_zone_id"></a> [target\_hosted\_zone\_id](#input\_target\_hosted\_zone\_id) | Hosted Zone Id for accessing the endpoint | `string` | n/a | yes |
| <a name="input_target_subnet_ids"></a> [target\_subnet\_ids](#input\_target\_subnet\_ids) | The Target Subnets Ids | `list(string)` | n/a | yes |
| <a name="input_target_vpc_id"></a> [target\_vpc\_id](#input\_target\_vpc\_id) | The Target VPC Id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_base_fqdn"></a> [base\_fqdn](#output\_base\_fqdn) | Base Full Qualified DNS Name |
| <a name="output_service1_endpoint"></a> [service1\_endpoint](#output\_service1\_endpoint) | Service 1 URL |
| <a name="output_service2_endpoint"></a> [service2\_endpoint](#output\_service2\_endpoint) | Service 2 URL |
