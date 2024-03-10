resource "fortios_firewall_vipgrp" "webserver-vip-group" {
  color     = 21
  interface = "wan1"
  name      = "webserver-vip-group"

  member {
    name = fortios_firewall_vip.webserver-vip-http.name
  }

  member {
    name = fortios_firewall_vip.webserver-vip-https.name
  }

}