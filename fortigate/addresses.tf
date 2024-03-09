
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

# Country Address Objects #

resource "fortios_firewall_address" "UnitedStates" {
    name    = "UnitedStates"
    type    = "geo"
    country = "US"
}

resource "fortios_firewall_address" "Canada" {
    name    = "Canada"
    type    = "geo"
    country = "CA"
}

resource "fortios_firewall_address" "Russia" {
    name    = "Russia"
    type    = "geo"
    country = "RU"
}

resource "fortios_firewall_address" "China" {
    name    = "China"
    type    = "geo"
    country = "CN"
}

resource "fortios_firewall_address" "NorthKorea" {
    name    = "NorthKorea"
    type    = "geo"
    country = "KP"
}

resource "fortios_firewall_address" "SouthKorea" {
    name    = "SouthKorea"
    type    = "geo"
    country = "KR"
}

resource "fortios_firewall_address" "Iran" {
    name    = "Iran"
    type    = "geo"
    country = "IR"
}

# Address Object Groups #

resource "fortios_firewall_addrgrp" "ThreatActorCountries" {
  allow_routing = "disable"
  color         = 5
  exclude       = "disable"
  name          = "ThreatActorCountries"
  visibility    = "enable"

  member {
            name = fortios_firewall_address.Russia.name
  }
}

