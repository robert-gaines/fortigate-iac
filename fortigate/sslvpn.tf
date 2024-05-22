resource "fortios_vpnssl_settings" "ra-vpn-config" {
  status                = "enable"
  login_attempt_limit   = 3
  login_block_time      = 60
  login_timeout         = 30
  auth_timeout          = 0
  idle_timeout          = 0
  port                  = 4343
  servercert            = "internal-RES-VRT-PRD-DSS-CA"
  tlsv1_3               = "enable"
  ssl_min_proto_ver     = "tls1-3"
  ciphersuite           = "TLS-AES-256-GCM-SHA384"
  force_two_factor_auth = "enable"
  ssl_client_renegotiation = "enable"
  algorithm = "high"
  dtls_tunnel = "enable"
  dtls_min_proto_ver = "dtls1-2"

  source_address {
    name = "PermittedCountries"
  }
}