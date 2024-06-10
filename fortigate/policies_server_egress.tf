resource "fortios_firewall_policy" "permit-openvas-sync" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-sync"
  schedule           = "always"
  nat                = "enable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "feed.openvas.org"
  }

  dstaddr {
    name = "feed.community.greenbone.net"
  }

  dstintf {
    name = "virtual-wan-link"
  }

  service {
    name = "RSYNC"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-servers-to-fgn-hosts" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-servers-to-fgn-hosts"
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
    name = "PermittedForeignHosts"
  }

  dstintf {
    name = "virtual-wan-link"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "servers"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-servers-to-wan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-servers-to-wan"
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
    name = "PermittedCountries"
  }

  dstintf {
    name = "virtual-wan-link"
  }

  service {
    name = "DNS"
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

  srcaddr {
    name = "servers"
  }

  srcintf {
    name = "servers"
  }
}