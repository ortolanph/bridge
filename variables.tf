variable "production_profile" {
  type        = string
  description = "The production profile"
}

variable "internal_profile" {
  type        = string
  description = "The internal profile"
}

variable "aws_region" {
  type        = string
  description = "The AWS region that the bridge should be deployed to."
}

variable "project_name" {
  type        = string
  description = "The project name"
}

variable "source_vpc_id" {
  type        = string
  description = "The Source VPC Id"
}

variable "source_subnet_ids" {
  type        = list(string)
  description = "The Source Subnets Ids"
}

variable "source_instance_id" {
  type        = string
  description = "The instance id of the source side"
}

variable "service_allowed_principal" {
  type        = string
  description = "The principal that should be allowed to access the Endpoint Service"
}

variable "target_vpc_id" {
  type        = string
  description = "The Target VPC Id"
}

variable "target_subnet_ids" {
  type        = list(string)
  description = "The Target Subnets Ids"
}

variable "target_hosted_zone_id" {
  type        = string
  description = "Hosted Zone Id for accessing the endpoint"
}
