resource "fortios_firewall_ips_custom" "ips-primary" {
  name         = "ips-primary"
  description  = "Flow Based IPS Profile"
  mode         = "flow"
}
