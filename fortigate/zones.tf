resource "fortios_system_zone" "servers" {
  intrazone = "deny"
  name      = "servers"
}

resource "fortios_system_zone" "workstations" {
  intrazone = "deny"
  name      = "workstations"
}

resource "fortios_system_zone" "management" {
  intrazone = "deny"
  name      = "management"
}

resource "fortios_system_zone" "webservers" {
  intrazone = "deny"
  name      = "webservers"
}

resource "fortios_system_zone" "administration" {
  intrazone = "deny"
  name      = "administration"
}

resource "fortios_system_zone" "deception" {
  intrazone = "deny"
  name      = "deception"
}

resource "fortios_system_zone" "wireless" {
  intrazone = "deny"
  name      = "wireless"
}

resource "fortios_system_zone" "vpn" {
  intrazone = "deny"
  name      = "vpn"
}