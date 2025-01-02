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

resource "fortios_firewall_vipgrp" "honeypot-vip-group" {
  color     = 11
  interface = "wan1"
  name      = "honeypot-vip-group"

  member {
    name = fortios_firewall_vip.honeypot-vip-conpot-bacnet.name
  }

  member {
    name = fortios_firewall_vip.honeypot-vip-conpot-ethernetip.name
  }

  member {
    name = fortios_firewall_vip.honeypot-vip-conpot-modbus.name
  }

  member {
    name = fortios_firewall_vip.honeypot-vip-conpot-plc.name
  }

  member {
    name = fortios_firewall_vip.honeypot-vip-cowrie-ssh.name
  }

  member {
    name = fortios_firewall_vip.honeypot-vip-dionaea-smb.name
  }

}