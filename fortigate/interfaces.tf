
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
  color       = 2
  netflow_sampler = "both"
}

resource "fortios_system_interface" "workstations" {
  ip          = "10.128.20.1 255.255.255.240"
  name        = "v20-wkstns"
  role        = "lan"
  type        = "vlan"
  vlanid      = 20  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
  color       = 3
}

resource "fortios_system_interface" "management" {
  ip          = "10.128.30.1 255.255.255.252"
  name        = "v30-management"
  role        = "lan"
  type        = "vlan"
  vlanid      = 30  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
  color       = 9
}

resource "fortios_system_interface" "webservers" {
  ip          = "10.128.40.1 255.255.255.252"
  name        = "v40-webservers"
  role        = "lan"
  type        = "vlan"
  vlanid      = 40  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
  color       = 21
}

resource "fortios_system_interface" "administration" {
  ip          = "10.128.50.1 255.255.255.240"
  name        = "v50-admin"
  role        = "lan"
  type        = "vlan"
  vlanid      = 50  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
  color       = 6
}

resource "fortios_system_interface" "deception" {
  ip          = "10.128.60.1 255.255.252.0"
  name        = "v60-deception"
  role        = "lan"
  type        = "vlan"
  vlanid      = 60  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
  color       = 10
}

resource "fortios_system_interface" "wireless" {
  ip          = "10.128.70.1 255.255.255.252"
  name        = "v70-wireless"
  role        = "lan"
  type        = "vlan"
  vlanid      = 70  
  vdom        = "root"
  mode        = "static"
  status      = "up"
  interface   = "fortilink"
  color       = 13
}