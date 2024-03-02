terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }

    backend "http" {
        address = var.TF_BACKEND_ADDRESS
        lock_address = var.TF_BACKEND_LOCK_ADDRESS
        unlock_address = var.TF_BACKEND_UNLOCK_ADDRESS
        username = var.TF_BACKEND_USERNAME
        password = var.TF_BACKEND_PASSWORD
  }
}

provider fortios {
    hostname = "192.168.1.99"
    token = var.TF_FORTIOS_TOKEN
    insecure = "true"
}

