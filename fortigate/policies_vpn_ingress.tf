
resource "fortios_firewall_policy" "permit-vpn-clients-to-bastion" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-vpn-clients-to-bastion"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-phy-prd-rpi-1"
  }

  dstintf {
    name = "administration"
  }

  service {
    name = "SSH"
  }

  srcaddr {
    name = "ssl-vpn-address-range"
  }

  srcintf {
    name = "vpn"
  }

  groups {
    name = "vpn-users"
  }
}

resource "fortios_firewall_policy" "permit-vpn-clients-to-swn" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-vpn-clients-to-swn"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-swn"
  }

  dstintf {
    name = "administration"
  }

  service {
    name = "RDP"
  }

  srcaddr {
    name = "ssl-vpn-address-range"
  }

  srcintf {
    name = "vpn"
  }

  groups {
    name = "vpn-users"
  }
}