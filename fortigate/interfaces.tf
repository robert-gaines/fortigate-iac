
resource "fortios_system_interface" "dmz" {
  ip          = "10.10.10.1 255.255.255.0"
  name        = "dmz"
  role        = "lan"
  type        = "physical"
  vdom        = "root"
  mode        = "static"
  status      = "down"
}

resource "fortios_system_interface" "fortilink" {
  ip          = "192.168.254.1 255.255.255.252"
  name        = "fortilink"
  role        = "fortilink"
  type        = "physical"
  vdom        = "root"
  mode        = "static"
  status      = "up"
} 