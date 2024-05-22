resource "fortios_user_group" "internal-ldap-users" {
  group_type         = "rsso"
  name               = "residence-vpn-users"
  match {
    server_name = "res-vrt-prd-dss-ldaps"
    group_name  = "Residence.VPN.Users"
  }
}