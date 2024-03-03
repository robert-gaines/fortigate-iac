resource "fortios_firewall_sslsshprofile" "certificate-inspection-primary" {
  name = "certificate-inspection-primary"

  ssl {
    inspect_all = "certificate-inspection"
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

