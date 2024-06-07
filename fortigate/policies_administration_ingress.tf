
resource "fortios_firewall_policy" "permit-workstations-to-admin" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-workstations-to-admin"
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
    name = "workstations"
  }

  srcintf {
    name = "workstations"
  }
}

resource "fortios_firewall_policy" "permit-workstations-rdp-swn" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-workstations-rdp-swn"
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
    name = "workstations"
  }

  srcintf {
    name = "workstations"
  }
}

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-admin" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-admin"
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
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-wlan-wkstn-rdp-swn" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-rdp-swn"
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
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-prometheus-to-admin" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-prometheus-to-admin"
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
    name = "prometheus-exporter"
  }

  srcaddr {
    name = "res-phy-prd-rpi-3"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-prm-to-win-exporter" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-prm-to-win-exporter"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-phy-prd-swn"
  }

  dstintf {
    name = "administration"
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