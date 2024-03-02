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

resource "fortios_system_interface" "fortilink" {
  fortilink          = "enable"
  fortilink_stacking = "enable"
  switch_controller_source_ip = "192.168.254.1"
  defaultgw    = "enable"
  distance     = 5
  ip           = "192.168.254.1 255.255.255.252"
  mtu          = 1500
  mtu_override = "disable"
  name         = "port1"
  type         = "fortlink"
  vdom         = "root"
  mode         = "static"
  vlanid       = 4094
  allowaccess = "ping https ssh"
  description  = "TF - FortiLink Configuration"
}