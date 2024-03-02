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

resource "fortios_system_interface" "fortilink_interface" {
  name          = "fortilink"
  vdom          = "root"  # Specify the VDOM for the FortiLink interface
  type          = "physical"
  role          = "lan"
  interface     = "port1"  # Specify the interface where the FortiLink connection is configured
  ip            = "192.168.254.1 255.255.255.252"  # Specify the IP address for the FortiLink interface
  allowaccess   = "ping fabric"  # Specify the allowed access for the FortiLink interface
}

