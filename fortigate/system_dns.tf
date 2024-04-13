
resource "fortios_system_dns" "res-phy-prd-fwp-dns" {
  primary       = "10.128.10.2"
  alt_primary   = "10.128.10.22"
  secondary     = "10.128.10.10"
  alt_secondary = "10.128.10.22"
  dns_over_tls  = "disable"
  source_ip     = "10.128.10.1"
  protocol      = "cleartext"
  timeout       = "10"
  log           = "all"
  domain {
    domain="internal.subterfuge.biz"
  }
  domain {
    domain="identity.subterfuge.biz"
  }
}