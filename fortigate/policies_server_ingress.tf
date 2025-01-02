
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

resource "fortios_firewall_policy" "permit-deception-to-id-svcs" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-id-svcs"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-idm"
  }

  dstaddr {
    name = "res-vrt-prd-dss"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "identity-management-services"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-to-siem" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-siem"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-gsm"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "SYSLOG"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-to-hids" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-hids"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-wzh"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "wazuh-agent"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-to-edr" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-edr"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-phy-prd-nsm"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "elastic-agent"
  }

  service {
    name = "elastic-web"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-to-vcr" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-vcr"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-phy-prd-nsm"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "velociraptor-client"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-to-jenkins" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-jenkins"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-vrt-prd-cds"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "ephemeral-range-tcp"
  }

  srcaddr {
    name = "res-phy-prd-rpi-9"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-nfs" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-nfs"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstintf {
    name = "servers"
  }

  dstaddr {
    name = "res-phy-prd-nas"
  }

  service {
    name = "NFS"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
  }
}

resource "fortios_firewall_policy" "permit-deception-to-smtp-relay" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-deception-to-smtp-relay"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "res-phy-prd-rpi-4"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "SMTP"
  }

  srcaddr {
    name = "deception-hosts"
  }

  srcintf {
    name = "deception"
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
  ssl_ssh_profile    = "certificate-inspection-primary"  

  dstaddr {
    name = "servers"
  }

  dstintf {
    name = "servers"
  }

  service {
    name = "SSH"
  }

  service {
    name = "identity-management-services"
  }

  service {
    name = "server-web-consoles"
  }

  service {
    name = "security-server-consoles"
  }

  service {
    name = "security-service-agents"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

resource "fortios_firewall_policy" "permit-admin-to-identity" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-admin-to-identity"
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
    name = "SSH"
  }

  service {
    name = "identity-management-services"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

resource "fortios_firewall_policy" "permit-admin-to-jenkins" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-admin-to-jenkins"
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
    name = "tcp-8080"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  service {
    name = "ephemeral-range-tcp"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

resource "fortios_firewall_policy" "permit-admin-to-puppet" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-admin-to-puppet"
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
    name = "puppet-primary"
  }

  srcaddr {
    name = "administration"
  }

  srcintf {
    name = "administration"
  }
}

resource "fortios_firewall_policy" "permit-admin-to-nas" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-admin-to-nas"
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

  service {
    name = "NFS"
    }

  srcaddr {
    name = "res-vrt-prd-swn"
  }

  srcaddr {
    name = "res-phy-prd-rpi-1"
  }

  srcintf {
    name = "administration"
  }
}

resource "fortios_firewall_policy" "permit-swn-to-adds" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-swn-to-adds"
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
    name = "ephemeral-range-tcp"
  }

  service {
    name = "dynamic-range-tcp"
  }

  srcaddr {
    name = "res-vrt-prd-swn"
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

resource "fortios_firewall_policy" "permit-wlan-mgt-to-dns" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-mgt-to-dns"
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
    name = "DNS"
  }

  srcaddr {
    name = "wireless-general-purpose"
  }

  srcaddr {
    name = "res-phy-prd-wap"
  }

  srcintf {
    name = "wireless"
  }
}

resource "fortios_firewall_policy" "permit-wlan-gpn-to-dns" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-gpn-to-dns"
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

  dstaddr {
    name = "res-vrt-prd-idm"
  }

  dstintf {
    name = "servers"
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

resource "fortios_firewall_policy" "permit-wlan-wkstn-to-svr-web" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wlan-wkstn-to-svr-web"
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
    name = "server-web-consoles"
  }

  srcaddr {
    name = "wireless-workstations"
  }

  srcintf {
    name = "wireless"
  }
}

