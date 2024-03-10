resource "fortios_firewall_vip" "example_vip" {
  name             = "example-vip"
  type             = "server-load-balance"
  extip            = "192.168.255.1"
  extintf          = "virtual-wan-link" 
  extport          = 443
  protocol         = "tcp"
  arp_reply        = "disable"

  mappedip {
    range = "10.128.40.2"
  }

}

