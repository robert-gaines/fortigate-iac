
resource "fortios_system_interface" "dmz" {
  ip          = "10.10.10.1 255.255.255.0"
  name        = "dmz"
  role        = "lan"
  type        = "physical"
  vdom        = "root"
  mode        = "static"
  status      = "down"
}

resource "fortios_system_interface" "wan1" {
  ip          = "192.168.255.1 255.255.255.192"
  name        = "wan1"
  role        = "wan"
  type        = "physical"
  vdom        = "root"
  mode        = "static"
  status      = "up"
}

resource "fortios_system_interface" "servers" {
  ip          = "10.128.10.1 255.255.255.0"
  name        = "v10-servers"
  role        = "lan"
  type        = "vlan"
  vlanid      = 10  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
}

