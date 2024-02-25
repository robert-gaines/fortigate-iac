
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
  action             = "deny"
  logtraffic         = "all"
  name               = "deny-threat-objects-to-webserver"
  schedule           = "always"
  nat                = "disable"
  internet_service   = "enable"
  block_notification = "enable"

  service {
    name = "all"
  }

  dstaddr {
    name = "webserver-vip-group"
  }

  dstintf {
    name = "webservers"
  }

  internet_service_name {
    name = "Botnet-C&C.Server"
  }

  internet_service_name {
    name = "BinaryEdge-Scanner"
  }

  internet_service_name {
    name = "Censys-Scanner"
  }

  internet_service_name {
    name = "CriminalIP-Scanner"
  }

  internet_service_name {
    name = "Cyber.Casa-Scanner"
  }

  internet_service_name {
    name = "Internet.Census.Group-Scanner"
  }

  internet_service_name {
    name = "InternetTTL-Scanner"
  }

  internet_service_name {
    name = "LeakIX-Scanner"
  }

  internet_service_name {
    name = "NetScout-Scanner"
  }

  internet_service_name {
    name = "Recyber-Scanner"
  }

  internet_service_name {
    name = "Shadowserver-Scanner"
  }

  internet_service_name {
    name = "Shodan-Scanner"
  }

  internet_service_name {
    name = "Stretchoid-Scanner"
  }

  internet_service_name {
    name = "Tenable-Tenable.io.CloudScanner"
  }

  internet_service_name {
    name = "UK.NCSC-Scanner"
  }

  srcintf {
    name = "virtual-wan-link"
  }
}