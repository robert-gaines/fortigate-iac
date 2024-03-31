
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
    name = "ALL"
  }

  srcaddr {
    name = "workstations"
  }

  srcintf {
    name = "workstations"
  }
}

resource "fortios_firewall_policy" "permit-webservers-to-servers" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-webservers-to-servers"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "servers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "security-service-agents"
  }

  srcaddr {
    name = "webservers"
  }

  srcintf {
    name = "webservers"
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
    name = "ALL"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

