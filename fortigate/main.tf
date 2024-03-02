terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }

    backend "http" {
        address = "$TF_BACKEND_ADDRESS"
        lock_address = "$TF_BACKEND_LOCK_ADDRESS"
        unlock_address = "$TF_BACKEND_UNLOCK_ADDRESS"
        username = "$TF_BACKEND_USERNAME"
        password = "$TF_BACKEND_PASSWORD"
  }
}

provider fortios {
    hostname = "192.168.1.99"
    token = "$TF_FORTIOS_TOKEN"
    insecure = "true"
}

