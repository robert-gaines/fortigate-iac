resource "fortios_firewall_policy" "permit-openvas-to-workstations" {
  action             = "accept"
  logtraffic         = "all"
  name               = "permit-openvas-to-workstations"
  schedule           = "vulnerability-scanning"
  nat                = "disable"
  utm_status         = "disable" 
  ssl_ssh_profile    = "certificate-inspection-primary"  

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