
resource "fortios_firewall_address" "servers" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.0"
  name                 = "servers"
  start_ip             = "10.128.10.0"
  subnet               = "10.128.10.0 255.255.255.0"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "workstations" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.240"
  name                 = "workstations"
  start_ip             = "10.128.20.0"
  subnet               = "10.128.20.0 255.255.255.240"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "management" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "management"
  start_ip             = "10.128.30.0"
  subnet               = "10.128.30.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "webservers" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "webservers"
  start_ip             = "10.128.40.0"
  subnet               = "10.128.40.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "administration" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "administration"
  start_ip             = "10.128.50.0"
  subnet               = "10.128.50.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "deception" {
  allow_routing        = "disable"
  end_ip               = "255.255.252.0"
  name                 = "deception"
  start_ip             = "10.128.60.0"
  subnet               = "10.128.60.0 255.255.252.0"
  type                 = "ipmask"
  visibility           = "enable"
}

# Host Address Objects #

resource "fortios_firewall_address" "res-phy-prd-rpi-1" {
    name     = "res-phy-prd-rpi-1"
    subnet   = "10.128.50.2/32"
}