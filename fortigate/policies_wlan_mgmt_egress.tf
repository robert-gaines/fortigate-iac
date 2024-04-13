
resource "fortios_firewall_policy" "permit-wlan-mgt-to-fgn-hosts" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-mgt-to-fgn-hosts"
  schedule           = "always"
  nat                = "enable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "PermittedCountries"
  }

  dstintf {
    name = "virtual-wan-link"
  }

  service {
    name = "NTP"
  }

  srcaddr {
    name = "res-phy-prd-wap"
  }

  srcintf {
    name = "wireless"
  }
}