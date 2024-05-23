
resource "fortios_firewall_policy" "permit-vpn-clients-to-admin" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-vpn-clients-to-admin"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "administration"
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
}