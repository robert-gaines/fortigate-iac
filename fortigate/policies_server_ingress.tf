
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

  service {
    name = "identity-management-services"
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

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-dc" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-dc"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-dss"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "Windows AD"
  }

  service {
    name = "DNS"
  }

  srcaddr {
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-nas" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-nas"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-phy-prd-nas"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "SMB"
  }

  srcaddr {
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-sec-svrs" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-sec-svrs"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "SecurityServers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "security-service-agents"
  }

  srcaddr {
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-wlan-gpn-to-sec-svrs" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-gpn-to-sec-svrs"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "SecurityServers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "security-service-agents"
  }

  srcaddr {
    name = "wireless-general-purpose"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-sec-consoles" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-sec-consoles"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "SecurityServers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "security-server-consoles"
  }

  srcaddr {
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

