
resource "fortios_firewall_policy" "permit-workstations-to-wan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-workstations-to-wan"
  schedule           = "always"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  webfilter_profile  = "webfilter-primary"
  application_list   = "app-control-primary"

  dstaddr {
    name = "all"
  }

  dstintf {
    name = "virtual-wan-link"
  }

  service {
    name = ["HTTP","HTTPS"]
  }

  srcaddr {
    name = "workstations"
  }

  srcintf {
    name = "v20-wkstn"
  }
}
