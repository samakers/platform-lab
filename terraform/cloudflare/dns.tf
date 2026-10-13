resource "cloudflare_dns_record" "lab" {
  zone_id = var.zone_id
  name    = "lab"
  type    = "A"
  content = "192.0.2.1"
  ttl     = 1
  proxied = false
  comment = "Managed by Terraform"
}
