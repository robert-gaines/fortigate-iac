resource "fortios_firewall_policy" "permit-admin-to-wlan-gpn" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-admin-to-wlan-gpn"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "wireless-general-purpose"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "SSH"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

