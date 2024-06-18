
resource "fortios_firewall_policy" "permit-wkstn-rdp-to-wlan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wkstn-rdp-to-wlan"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "wireless-workstations"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "RDP"
  }

  srcaddr {
    name = "workstations"
  }

  srcintf {
    name = "workstations"
  }
}

resource "fortios_firewall_policy" "permit-win-exporter-to-wlan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-win-exporter-to-wlan"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "wireless-workstations"
  }
  dstintf {
    name = "wireless"
  }
  service {
    name = "prometheus-windows-exporter"
  }

  srcaddr {
    name = "res-phy-prd-rpi-3"
  }
  srcintf {
    name = "servers"
  }
}