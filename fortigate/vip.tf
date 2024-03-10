resource "fortios_firewall_vip" "webserver-vip-https" {
  name             = "res-vrt-prd-wsr:443"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  extport          = "443" 
  color            = 21
  comment          = "Web Server - HTTPS" 
  mappedip {
    range = "10.128.40.2"
  }
  service {
    name = "HTTPS"
  }
}

resource "fortios_firewall_vip" "webserver-vip-http" {
  name             = "res-vrt-prd-wsr:80"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  extport          = "443" 
  color            = 21
  comment          = "Web Server - HTTP" 
  mappedip {
    range = "10.128.40.2"
  }
  service {
    name = "HTTP"
  }
}

