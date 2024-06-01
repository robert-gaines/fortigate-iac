terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }
}

provider "fortios" {
    hostname = "10.128.50.1:8443"
    token    = var.FORTIOS_TOKEN
    insecure = "true"
}

resource "fortios_system_global" "res-phy-prd-fwp-global" {
    hostname = "res-phy-prd-fwp"
    gui_theme = "onyx"
    admin_port        = 8080
    admin_sport       = 8443
    admin_ssh_port    = 8222
    admin_telnet_port = 8223
    admin_forticloud_sso_login = "disable"
}

resource "fortios_ips_global" "res-phy-prd-fwpglobal-ips" {
  anomaly_mode           = "continuous"
  database               = "regular"
  fail_open              = "disable"
}

