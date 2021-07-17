provider "aws" {
  region  = var.aws_region
  profile = var.production_profile
  alias   = "production_account"
  version = "3.42.0"
}

provider "aws" {
  region  = var.aws_region
  profile = var.internal_profile
  alias   = "internal_account"
  version = "3.42.0"
}
