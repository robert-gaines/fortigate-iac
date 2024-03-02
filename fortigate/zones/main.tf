
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

resource "fortios_system_zone" "server-zone" {
    name = "servers"
    intrazone = "deny"
}

