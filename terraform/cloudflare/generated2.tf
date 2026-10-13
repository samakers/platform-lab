# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "a8e141212a095a9a39bb2dc919cc683f/65a3f1a1b2c6595236fb447edd8c01d1"
resource "cloudflare_dns_record" "vercel_verify" {
  content                 = "\"vc-domain-verify=sgahub.org,6d5ad49df13c6a97b6ea,dc\""
  include_shadow_metadata = false
  name                    = "_vercel.sgahub.org"
  proxied                 = false
  settings = {
  }
  tags    = []
  ttl     = 600
  type    = "TXT"
  zone_id = var.zone_id
}

# __generated__ by Terraform from "a8e141212a095a9a39bb2dc919cc683f/5266a49fcfe72e2e68d88cfa590bce96"
resource "cloudflare_dns_record" "www" {
  content                 = "56d235daa897dd53.vercel-dns-017.com"
  include_shadow_metadata = false
  name                    = "www.sgahub.org"
  proxied                 = false
  settings = {
    flatten_cname = false
    ipv4_only     = false
    ipv6_only     = false
  }
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = var.zone_id
}
