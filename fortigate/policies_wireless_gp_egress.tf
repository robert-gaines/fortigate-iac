resource "fortios_firewall_policy" "permit-general-purpose-to-wan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-general-purpose-to-wan"
  schedule           = "always"
  nat                = "enable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  webfilter_profile  = "webfilter-primary"
  application_list   = "app-control-primary"
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "all"
  }
  dstintf {
    name = "virtual-wan-link"
  }
  service {
    name = "NTP"
  }
  service {
    name = "HTTP"
  }
  service {
    name = "HTTPS"
  }
  service {
    name = "DNS"
  }
  srcaddr {
    name = "wireless-general-purpose"
  }
  srcintf {
    name = "wireless"
  }
}

