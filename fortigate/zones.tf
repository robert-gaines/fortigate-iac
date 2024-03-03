resource "fortios_system_zone" "servers" {
  intrazone = "deny"
  name      = "servers"
}

resource "fortios_system_zone" "workstations" {
  intrazone = "deny"
  name      = "workstations"
}