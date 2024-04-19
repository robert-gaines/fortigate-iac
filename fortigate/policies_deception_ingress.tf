resource "fortios_firewall_policy" "permit-administration-to-deception" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-administration-to-deception"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "deception"
  }

  dstintf {
    name = "deception"
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

resource "fortios_firewall_policy" "permit-prometheus-to-deception" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-prometheus-to-deception"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "deception"
  }

  dstintf {
    name = "deception"
  }

  service {
    name = "prometheus-exporter"
  }

  srcaddr {
    name = "sres-phy-prd-rpi-3"
  }

  srcintf {
    name = "servers"
  }
}