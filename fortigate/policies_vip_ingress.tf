
resource "fortios_firewall_policy" "permit-wan-to-webserver" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-wan-to-webserver"
  schedule           = "always"
  nat                = "disable"
  utm_status         = "enable" 
  inspection_mode    = "flow" 
  av_profile         = "av-flow"
  ips_sensor         = "ips-primary"  
  ssl_ssh_profile    = "certificate-inspection-primary" 

  dstaddr {
    name = "webserver-vip-group"
  }

  dstintf {
    name = "webservers"
  }

  service {
    name = "HTTP"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "PermittedCountries"
  }

  srcintf {
    name = "virtual-wan-link"
  }
}

resource "fortios_firewall_policy" "deny-threat-objects-to-webserver" {
  action               = "deny"
  logtraffic           = "disable"
  name                 = "deny-threat-objects-to-webserver"
  schedule             = "always"
  nat                  = "disable"
  internet_service_src = "enable"  
  block_notification   = "enable"

  dstaddr {
    name = "webserver-vip-group"
  }

  dstintf {
    name = "webservers"
  }

  internet_service_src_name {
    name = "Botnet-C&C.Server"
  }

  internet_service_src_name {
    name = "BinaryEdge-Scanner"
  }

  internet_service_src_name {
    name = "Censys-Scanner"
  }

  internet_service_src_name {
    name = "CriminalIP-Scanner"
  }

  internet_service_src_name {
    name = "Cyber.Casa-Scanner"
  }

  internet_service_src_name {
    name = "Internet.Census.Group-Scanner"
  }

  internet_service_src_name {
    name = "InterneTTL-Scanner"
  }

  srcintf {
    name = "virtual-wan-link"
  }

  service {
    name = "ALL"
  }
}



