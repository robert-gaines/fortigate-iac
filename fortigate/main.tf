terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }
}

provider "fortios" {
    hostname = "10.128.20.1"
    token    = var.FORTIOS_TOKEN
    insecure = "true"
}

resource "fortios_system_global" "res-phy-prd-fwp-global" {
    hostname = "res-phy-prd-fwp"
    gui_theme = "onyx"
}

resource "fortios_ips_global" "res-phy-prd-fwpglobal-ips" {
  anomaly_mode           = "continuous"
  database               = "regular"
  fail_open              = "disable"
}

