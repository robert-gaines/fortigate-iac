terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }
}

provider fortios {
    hostname = "192.168.1.99"
    token = var.TF_FORTIOS_TOKEN
    insecure = "true"
}

