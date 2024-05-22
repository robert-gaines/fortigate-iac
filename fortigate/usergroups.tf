resource "fortios_user_group" "vpn-users" {
  group_type         = "firewall"
  name               = "vpn-users"
  match {
    server_name = "res-vrt-prd-dss-ldaps"
    group_name  = "Residence.VPN.Users"
  }
}