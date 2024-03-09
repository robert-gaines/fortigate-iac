
resource "fortios_firewall_policy" "permit-workstations-to-wan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-workstations-to-wan"
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
    name = "DNS"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "workstations"
  }

  srcintf {
    name = "workstations"
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
    name = "all"
  }

  dstintf {
    name = "virtual-wan-link"
  }

  service {
    name = "DNS"
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

resource "fortios_firewall_policy" "permit-administration-to-wan" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-administration-to-wan"
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
    name = "DNS"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

resource "fortios_firewall_policy" "permit-workstations-to-servers" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-workstations-to-servers"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  webfilter_profile  = "webfilter-primary"
  application_list   = "app-control-primary"
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "servers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "DNS"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "workstations"
  }

  srcintf {
    name = "workstations"
  }
}

resource "fortios_firewall_policy" "permit-admin-to-servers" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-admin-to-servers"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  webfilter_profile  = "webfilter-primary"
  application_list   = "app-control-primary"
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "servers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "All"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

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
  webfilter_profile  = "webfilter-primary"
  application_list   = "app-control-primary"
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "administration"
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