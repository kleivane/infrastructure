provider "aws" {
  region = "eu-north-1"
  version = "~> 2.47"
}

resource "aws_route53_zone" "primary" {
  name = "tinekleivane.bekk.no"
}
