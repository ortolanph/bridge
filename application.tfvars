# General
aws_region   = "application-region"
project_name = "project_name"

# Source Data
source_vpc_id = "source-vpc-id"
source_subnet_ids = [
  "source-subnet-id-1",
  "source-subnet-id-2",
  "source-subnet-id-3"
]
source_instance_id        = "source-instance-id"
service_allowed_principal = "arn:aws:iam::INTERNAL_ACCOUNT_ID:root"

# Target Data
target_vpc_id = "target-vpc-id"
target_subnet_ids = [
  "target-subnet-id-1",
  "target-subnet-id-2",
  "target-subnet-id-3"
]
target_hosted_zone_id = "target-private-hosted-zone-id"
