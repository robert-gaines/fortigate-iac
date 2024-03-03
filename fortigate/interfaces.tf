
resource "fortios_system_interface" "dmz" {
  ip          = "10.10.10.1 255.255.255.0"
  allowaccess = ""
  name        = "dmz"
  role        = "lan"
  type        = "physical"
  vdom        = "root"
  mode        = "static"
  status      = "down"
} 