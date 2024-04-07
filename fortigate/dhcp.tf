resource "fortios_systemdhcp_server" "v70-wireless-dhcp" {
  dns_service = "default"
  ntp_service = "default"
  fosid       = 1
  interface   = "v70-wireless"
  netmask     = "255.255.255.252"
  status      = "enable"

  ip_range {
    end_ip   = "10.128.70.2"
    id       = 1
    start_ip = "10.128.70.2"
  }
}

resource "fortios_systemdhcp_server" "wireless-iot-dhcp" {
  # Workstations WLAN DHCP Server
  dns_service = "default"
  ntp_service = "default"
  fosid       = 1
  interface   = "res-nwk-sid-wkn"
  netmask     = "255.255.255.240"
  status      = "enable"

  ip_range {
    end_ip   = "10.128.80.2"
    id       = 1
    start_ip = "10.128.80.14"
  }
}

resource "fortios_systemdhcp_server" "wireless-iot-dhcp" {
  # IoT WLAN DHCP Server
  dns_service = "default"
  ntp_service = "default"
  fosid       = 1
  interface   = "res-nwk-sid-iot"
  netmask     = "255.255.255.192"
  status      = "enable"

  ip_range {
    end_ip   = "10.128.90.2"
    id       = 1
    start_ip = "10.128.90.62"
  }
}

resource "fortios_systemdhcp_server" "wireless-gpn-dhcp" {
  # General Purpose WLAN DHCP Server
  dns_service = "default"
  ntp_service = "default"
  fosid       = 1
  interface   = "res-nwk-sid-gpn"
  netmask     = "255.255.255.240"
  status      = "enable"

  ip_range {
    end_ip   = "10.128.100.2"
    id       = 1
    start_ip = "10.128.100.14"
  }
}
