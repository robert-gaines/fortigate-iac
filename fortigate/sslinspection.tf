resource "fortios_firewall_sslsshprofile" "certificate-inspection-primary" {
  name    = "certificate-inspection-primary"
  comment = "Primary SSL/TLS Inspection Profile"

  ssl {
    inspect_all             = "certificate-inspection"
    expired_server_cert     = "allow"
    revoked_server_cert     = "block"
    invalid_server_cert     = "block"
    sni_server_cert_check   = "enable"
    min_allowed_ssl_version = "tls-1.0"
  }

  https {
    ports = 443
  }
  ftps {
    ports = 990
  }
  imaps {
    ports = 993
  }
  pop3s {
    ports = 995
  }
  smtps {
    ports = 465
  }

}

