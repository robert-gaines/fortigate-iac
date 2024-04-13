
resource "fortios_firewall_address" "servers" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.0"
  name                 = "servers"
  start_ip             = "10.128.10.0"
  subnet               = "10.128.10.0 255.255.255.0"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "workstations" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.240"
  name                 = "workstations"
  start_ip             = "10.128.20.0"
  subnet               = "10.128.20.0 255.255.255.240"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "management" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "management"
  start_ip             = "10.128.30.0"
  subnet               = "10.128.30.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "webservers" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "webservers"
  start_ip             = "10.128.40.0"
  subnet               = "10.128.40.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "administration" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "administration"
  start_ip             = "10.128.50.0"
  subnet               = "10.128.50.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "deception" {
  allow_routing        = "disable"
  end_ip               = "255.255.252.0"
  name                 = "deception"
  start_ip             = "10.128.60.0"
  subnet               = "10.128.60.0 255.255.252.0"
  type                 = "ipmask"
  visibility           = "enable"
}

# Wireless Network Address Objects

resource "fortios_firewall_address" "wireless-management" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.252"
  name                 = "wireless-management"
  start_ip             = "10.128.70.0"
  subnet               = "10.128.70.0 255.255.255.252"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "wireless-workstations" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.240"
  name                 = "wireless-workstations"
  start_ip             = "10.128.80.0"
  subnet               = "10.128.80.0 255.255.255.240"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "wireless-iot" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.192"
  name                 = "wireless-iot"
  start_ip             = "10.128.90.0"
  subnet               = "10.128.90.0 255.255.255.192"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "wireless-general-purpose" {
  allow_routing        = "disable"
  end_ip               = "255.255.255.240"
  name                 = "wireless-general-purpose"
  start_ip             = "10.128.100.0"
  subnet               = "10.128.100.0 255.255.255.240"
  type                 = "ipmask"
  visibility           = "enable"
}

# Host Address Objects #

# Switch OBJ is current a DHCP reservation
# bound to the MAC
# resource "fortios_firewall_address" "res-phy-prd-swp" {
#     name   = "res-phy-prd-swp"
#     subnet = "192.168.254.2/32"
# }

resource "fortios_firewall_address" "res-phy-prd-wap" {
    name   = "res-phy-prd-wap"
    subnet = "10.128.70.2/32"
}

resource "fortios_firewall_address" "res-phy-prd-hvr-pmx-1" {
    name     = "res-phy-prd-hvr-pmx-1"
    subnet   = "10.128.10.11/32"
}

resource "fortios_firewall_address" "res-phy-prd-hvr-pmx-2" {
    name     = "res-phy-prd-hvr-pmx-2"
    subnet   = "10.128.10.12/32"
}

resource "fortios_firewall_address" "res-phy-prd-hvr-pmx-3" {
    name     = "res-phy-prd-hvr-pmx-3"
    subnet   = "10.128.10.13/32"
}

resource "fortios_firewall_address" "res-vrt-prd-dss" {
    name     = "res-vrt-prd-dss"
    subnet   = "10.128.10.2/32"
}

resource "fortios_firewall_address" "res-phy-prd-nas" {
    name     = "res-phy-prd-nas"
    subnet   = "10.128.10.3/32"
}

resource "fortios_firewall_address" "res-vrt-prd-spk" {
    name     = "res-vrt-prd-spk"
    subnet   = "10.128.10.5/32"
}

resource "fortios_firewall_address" "res-vrt-prd-ssr" {
    name     = "res-vrt-prd-ssr"
    subnet   = "10.128.10.6/32"
}

resource "fortios_firewall_address" "res-phy-prd-nsm" {
    name     = "res-phy-prd-nsm"
    subnet   = "10.128.10.7/32"
}

resource "fortios_firewall_address" "res-vrt-prd-wzh" {
    name     = "res-vrt-prd-wzh"
    subnet   = "10.128.10.8/32"
}

resource "fortios_firewall_address" "res-phy-prd-idm" {
    name     = "res-vrt-prd-idm"
    subnet   = "10.128.10.10/32"
}

resource "fortios_firewall_address" "res-vrt-prd-wsr" {
    name     = "res-vrt-prd-wsr"
    subnet   = "10.128.40.2/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-1" {
    name     = "res-phy-prd-rpi-1"
    subnet   = "10.128.50.2/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-2" {
    name     = "res-phy-prd-rpi-2"
    subnet   = "10.128.10.22/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-3" {
    name     = "res-phy-prd-rpi-3"
    subnet   = "10.128.10.23/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-4" {
    name     = "res-phy-prd-rpi-4"
    subnet   = "10.128.10.24/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-5" {
    name     = "res-phy-prd-rpi-5"
    subnet   = "10.128.10.25/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-6" {
    name     = "res-phy-prd-rpi-6"
    subnet   = "10.128.10.26/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-7" {
    name     = "res-phy-prd-rpi-7"
    subnet   = "10.128.10.27/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-8" {
    name     = "res-phy-prd-rpi-8"
    subnet   = "10.128.10.28/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-9" {
    name     = "res-phy-prd-rpi-9"
    subnet   = "10.128.60.2/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-10" {
    name     = "res-phy-prd-rpi-10"
    subnet   = "10.128.60.3/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-11" {
    name     = "res-phy-prd-rpi-11"
    subnet   = "10.128.60.4/32"
}

resource "fortios_firewall_address" "res-phy-prd-rpi-12" {
    name     = "res-phy-prd-rpi-12"
    subnet   = "10.128.60.5/32"
}

# FQDN Objects #

resource "fortios_firewall_address" "Proxmox-FQDN" {
    name = "proxmox.com"
    type = "fqdn"
    fqdn = "proxmox.com"
}

resource "fortios_firewall_address" "ProxmoxForum-FQDN" {
    name = "forum.proxmox.com"
    type = "fqdn"
    fqdn = "forum.proxmox.com"
}

resource "fortios_firewall_address" "ProxmoxPVE-FQDN" {
    name = "pve.proxmox.com"
    type = "fqdn"
    fqdn = "pve.proxmox.com"
}

resource "fortios_firewall_address" "Ubuntu-FQDN" {
    name = "ports.ubuntu.com"
    type = "fqdn"
    fqdn = "ports.ubuntu.com"
}

resource "fortios_firewall_address" "Protonmail-FQDN-1" {
    name = "protonmail.com"
    type = "fqdn"
    fqdn = "protonmail.com"
}

resource "fortios_firewall_address" "Protonmail-FQDN-2" {
    name = "mail.proton.me"
    type = "fqdn"
    fqdn = "mail.proton.me"
}

resource "fortios_firewall_address" "Protonmail-FQDN-3" {
    name = "*.proton.mail"
    type = "fqdn"
    fqdn = "*.proton.mail"
}

resource "fortios_firewall_address" "Protonmail-FQDN-4" {
    name = "*.proton.me"
    type = "fqdn"
    fqdn = "*.proton.me"
}

resource "fortios_firewall_address" "Protonmail-FQDN-5" {
    name = "account.proton.me"
    type = "fqdn"
    fqdn = "account.proton.me"
}

resource "fortios_firewall_address" "Stamus-Threat-Intel" {
    name = "ti.stamus-networks.io"
    type = "fqdn"
    fqdn = "ti.stamus-networks.io"
}

resource "fortios_firewall_address" "Elastic-Artifacts" {
    name = "artifacts.elastic.co"
    type = "fqdn"
    fqdn = "artifacts.elastic.co"
}

resource "fortios_firewall_address" "Synology-MYDS" {
    name = "myds.synology.com"
    type = "fqdn"
    fqdn = "myds.synology.com"
}

# Country Address Objects #

resource "fortios_firewall_address" "UnitedStates" {
    name    = "UnitedStates"
    type    = "geo"
    country = "US"
}

resource "fortios_firewall_address" "Canada" {
    name    = "Canada"
    type    = "geo"
    country = "CA"
}

resource "fortios_firewall_address" "Russia" {
    name    = "Russia"
    type    = "geo"
    country = "RU"
}

resource "fortios_firewall_address" "China" {
    name    = "China"
    type    = "geo"
    country = "CN"
}

resource "fortios_firewall_address" "NorthKorea" {
    name    = "NorthKorea"
    type    = "geo"
    country = "KP"
}

resource "fortios_firewall_address" "SouthKorea" {
    name    = "SouthKorea"
    type    = "geo"
    country = "KR"
}

resource "fortios_firewall_address" "Iran" {
    name    = "Iran"
    type    = "geo"
    country = "IR"
}

# Address Object Groups #

resource "fortios_firewall_addrgrp" "ThreatActorCountries" {
  allow_routing = "disable"
  color         = 5
  exclude       = "disable"
  name          = "ThreatActorCountries"
  visibility    = "enable"

  member {
            name = fortios_firewall_address.Russia.name
         }
  member {
            name = fortios_firewall_address.China.name
         }
  member {
            name = fortios_firewall_address.Iran.name
         }
  member {
            name = fortios_firewall_address.NorthKorea.name
         }
  member {
            name = fortios_firewall_address.SouthKorea.name
         }
}

resource "fortios_firewall_addrgrp" "PermittedCountries" {
  allow_routing = "disable"
  color         = 19
  exclude       = "disable"
  name          = "PermittedCountries"
  visibility    = "enable"

  member {
            name = fortios_firewall_address.UnitedStates.name
         }
  member {
            name = fortios_firewall_address.Canada.name
         }
}

resource "fortios_firewall_addrgrp" "PermittedForeignHosts" {
  allow_routing = "disable"
  color         = 15
  exclude       = "disable"
  name          = "PermittedForeignHosts"
  visibility    = "enable"

  member {
            name = fortios_firewall_address.Proxmox-FQDN.name
         }
  member {
            name = fortios_firewall_address.ProxmoxForum-FQDN.name
         }
  member {
            name = fortios_firewall_address.ProxmoxPVE-FQDN.name
         }
  member {
            name = fortios_firewall_address.Ubuntu-FQDN.name
         }
  member {
            name = fortios_firewall_address.Protonmail-FQDN-1.name
         }
  member {
            name = fortios_firewall_address.Protonmail-FQDN-2.name
         }
  member {
            name = fortios_firewall_address.Protonmail-FQDN-3.name
         }
  member {
            name = fortios_firewall_address.Protonmail-FQDN-4.name
         }
  member {
            name = fortios_firewall_address.Protonmail-FQDN-5.name
         }
  member {
            name = fortios_firewall_address.Stamus-Threat-Intel.name
         }
  member {
            name = fortios_firewall_address.Elastic-Artifacts.name
         }
  member {
            name = fortios_firewall_address.Synology-MYDS.name
         }
}

resource "fortios_firewall_addrgrp" "SecurityServers" {
    allow_routing = "disable"
    color         = 21
    exclude       = "disable"
    name          = "SecurityServers"
    visibility    = "enable"

    member {
        name = fortios_firewall_address.res-vrt-prd-spk.name
    }
    member {
        name = fortios_firewall_address.res-phy-prd-nsm.name
    }
    member {
        name = fortios_firewall_address.res-vrt-prd-wzh.name
    }
    member {
        name = fortios_firewall_address.res-vrt-prd-ssr.name
    }

}

