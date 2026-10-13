# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "a8e141212a095a9a39bb2dc919cc683f/a02e521a4f4508011d018c5069f1b036"
resource "cloudflare_dns_record" "root" {
  content                 = "216.198.79.1"
  include_shadow_metadata = false
  name                    = "sgahub.org"
  proxied                 = false
  settings = {
  }
  tags    = []
  ttl     = 600
  type    = "A"
  zone_id = var.zone_id
}
