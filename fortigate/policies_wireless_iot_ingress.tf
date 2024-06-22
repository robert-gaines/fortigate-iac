
resource "fortios_firewall_policy" "permit-wkstn-to-iot-wlan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wkstn-to-iot-wlan"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "wireless-iot"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "print-services"
  }

  srcaddr {
    name = "workstations"
  }

  srcintf {
    name = "workstations"
  }
}

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-iot" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-iot"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "wireless-iot"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "print-services"
  }

  srcaddr {
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}