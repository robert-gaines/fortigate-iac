terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }
}

provider "fortios" {
    hostname = "192.168.1.99"
    token    = var.FORTIOS_TOKEN
    insecure = "true"
}

resource "fortios_system_global" "res-phy-prd-fwp-global" {
    hostname = "res-phy-prd-fwp"
    alias    = "FGT60ETK20049899"
    language = "english"
}

