provider "aws" {
  region = "eu-north-1"
  version = "~> 2.47"
}

resource "aws_route53_zone" "primary" {
  name = "skysett.net."
  comment = "HostedZone created by Route53 Registrar, now managed by Terraform"
}

# Se http://www.dns-sd.org./trailingdotsindomainnames.html for
# trailing dots forklaring

resource "aws_route53_record" "primary" {
  name            = "skysett.net."
  ttl             = 172800
  type            = "NS"
  zone_id         = aws_route53_zone.primary.zone_id

  records = [
    "${aws_route53_zone.primary.name_servers.0}.",
    "${aws_route53_zone.primary.name_servers.1}.",
    "${aws_route53_zone.primary.name_servers.2}.",
    "${aws_route53_zone.primary.name_servers.3}.",
  ]
}
