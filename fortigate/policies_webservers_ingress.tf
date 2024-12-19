
resource "fortios_firewall_policy" "permit-prometheus-to-webserver" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-prometheus-to-webserver"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-wsr"
  }

  dstintf {
    name = "webservers"
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