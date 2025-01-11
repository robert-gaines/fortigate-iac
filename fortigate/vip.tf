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
  color            = 11
  comment          = "Honeypot - Conpot - BACNET" 
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "udp"
  mappedport       = "47808"
  extport          = "47808"
  mappedip {
    range = "10.128.60.15"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-conpot-ethernetip" {
  name             = "conpot-ethernetip:44818"
  extintf          = "wan1" 
  extip            = "192.168.255.1" 
  color            = 11
  comment          = "Honeypot - Conpot - ETHERNETIP"
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "44818"
  extport          = "44818"
  mappedip {
    range = "10.128.60.16"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-conpot-modbus" {
  name             = "conpot-modbus:502"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  color            = 11
  comment          = "Honeypot - Conpot - MODBUS" 
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "502"
  extport          = "502"
  mappedip {
    range = "10.128.60.13"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-conpot-plc" {
  name             = "conpot-plc:102"
  extintf          = "wan1" 
  extip            = "192.168.255.1" 
  color            = 11
  comment          = "Honeypot - Conpot - S7-PLC"
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "102"
  extport          = "102" 
  mappedip {
    range = "10.128.60.17"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-cowrie-ssh" {
  name             = "cowrie-ssh:2222"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  color            = 11
  comment          = "Honeypot - Cowrie - SSH"
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "2222"
  extport          = "2222"

  mappedip {
    range = "10.128.60.11"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-dionaea-smb" {
  name             = "dionaea-smb:445"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  color            = 11
  comment          = "Honeypot - Dionaea - SMB"
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "445"
  extport          = "445" 

  mappedip {
    range = "10.128.60.8"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-dionaea-rpc" {
  name             = "dionaea-smb:135"
  extintf          = "wan1" 
  extip            = "192.168.255.1" 
  color            = 11
  comment          = "Honeypot - Dionaea - RPC" 
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "135"
  extport          = "135"

  mappedip {
    range = "10.128.60.7"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-dionaea-mssql" {
  name             = "dionaea-mssql:1433"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  color            = 11
  comment          = "Honeypot - Dionaea - MSSQL" 
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "1433"
  extport          = "1433"

  mappedip {
    range = "10.128.60.9"
  }
}

resource "fortios_firewall_vip" "honeypot-vip-dionaea-mysql" {
  name             = "dionaea-mysql:3306"
  extintf          = "wan1" 
  extip            = "192.168.255.1"
  color            = 11
  comment          = "Honeypot - Dionaea - MYSQL" 
  portforward      = "enable"
  portmapping_type = "1-to-1"
  protocol         = "tcp"
  mappedport       = "3306"
  extport          = "3306"

  mappedip {
    range = "10.128.60.10"
  }
}
