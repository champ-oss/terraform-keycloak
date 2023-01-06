provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {}
}

locals {
  git = "terraform-aws-keycloak"
}

data "aws_route53_zone" "this" {
  name = "oss.champtest.net."
}

data "aws_vpcs" "this" {
  tags = {
    purpose = "vega"
  }
}

data "aws_subnets" "private" {
  tags = {
    purpose = "vega"
    Type    = "Private"
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.this.ids[0]]
  }
}

data "aws_subnets" "public" {
  tags = {
    purpose = "vega"
    Type    = "Public"
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.this.ids[0]]
  }
}

module "acm" {
  source            = "github.com/champ-oss/terraform-aws-acm.git?ref=v1.0.110-61ad6b7"
  git               = local.git
  domain_name       = "keycloak.${data.aws_route53_zone.this.name}"
  create_wildcard   = false
  zone_id           = data.aws_route53_zone.this.zone_id
  enable_validation = true
}

module "keycloak" {
  source              = "github.com/champ-oss/terraform-aws-keycloak.git?ref=3cbd8c1c4ecfaa1427bcb27036e297ac21b640c7"
  certificate_arn     = module.acm.arn
  public_subnet_ids   = data.aws_subnets.public.ids
  private_subnet_ids  = data.aws_subnets.private.ids
  vpc_id              = data.aws_vpcs.this.ids[0]
  domain              = data.aws_route53_zone.this.name
  zone_id             = data.aws_route53_zone.this.zone_id
  protect             = false
  skip_final_snapshot = true
}

module "keycloak_provider" {
  source     = "../../"
  username   = "admin"
  password   = module.keycloak.keycloak_admin_password
  url        = module.keycloak.keycloak_endpoint
  depends_on = [module.keycloak]
}
