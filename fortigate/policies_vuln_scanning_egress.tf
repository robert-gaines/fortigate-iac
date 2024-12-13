resource "fortios_firewall_policy" "permit-openvas-to-workstations" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-workstations"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "workstations"
  }

  dstintf {
    name = "workstations"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-management" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-management"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "management"
  }

  dstintf {
    name = "management"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-webservers" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-webservers"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "webservers"
  }

  dstintf {
    name = "webservers"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-admin" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-admin"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "administration"
  }

  dstintf {
    name = "administration"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-deception" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-deception"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "deception"
  }

  dstintf {
    name = "deception"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-wireless-mgt" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-wireless-mgt"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "wireless-management"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-wlan-wkstn" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-wlan-wkstn"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "wireless-workstations"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-wlan-iot" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-wlan-iot"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "wireless-iot"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}

resource "fortios_firewall_policy" "permit-openvas-to-wlan-gp" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-wlan-gp"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "no-inspection"  

  dstaddr {
    name = "wireless-general-purpose"
  }

  dstintf {
    name = "wireless"
  }

  service {
    name = "ALL"
  }

  srcaddr {
    name = "res-vrt-prd-vms"
  }

  srcintf {
    name = "servers"
  }
}