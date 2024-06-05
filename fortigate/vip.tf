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

# Honeypot VIPs #

resource "fortios_firewall_vip" "honeypot-vip-conpot-bacnet" {
  name             = "conpot-bacnet:47808"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  extport          = "47808" 
  color            = 11
  comment          = "Honeypot - Conpot - BACNET" 
  mappedip {
    range = "10.128.60.13"
  }
  service {
    name = "BACNET"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-conpot-ethernetip" {
  name             = "conpot-ethernetip:44818"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  extport          = "44818" 
  color            = 11
  comment          = "Honeypot - Conpot - ETHERNETIP" 
  mappedip {
    range = "10.128.60.14"
  }
  service {
    name = "ETHERNETIP"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-conpot-modbus" {
  name             = "conpot-modbus:502"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  extport          = "502" 
  color            = 11
  comment          = "Honeypot - Conpot - MODBUS" 
  mappedip {
    range = "10.128.60.11"
  }
  service {
    name = "MODBUS"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-conpot-plc" {
  name             = "conpot-plc:102"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  extport          = "502" 
  color            = 11
  comment          = "Honeypot - Conpot - S7-PLC" 
  mappedip {
    range = "10.128.60.15"
  }
  service {
    name = "S7-PLC"
  }
}

