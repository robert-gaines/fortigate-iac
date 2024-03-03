
resource "fortios_system_interface" "dmz" {
  ip          = "172.28.255.253 255.255.255.255"
  allowaccess = "ping https ssh snmp http telnet fgfm radius-acct probe-response fabric ftm speed-test"
  name        = "dmz"
  role        = "lan"
  type        = "physical"
  vdom        = "root"
  mode        = "static"
  status      = "up"
} 