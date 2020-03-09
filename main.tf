provider "aws" {
  region  = "eu-north-1"
  version = "~> 2.47"
}
data "aws_route53_zone" "primary" {
  name = "skysett.net."
}
output "name_servers" {
  value = data.aws_route53_zone.primary.name_servers
}
