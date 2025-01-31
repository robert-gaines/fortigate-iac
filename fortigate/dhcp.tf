resource "fortios_systemdhcp_server" "v70-wireless-dhcp" {
  dns_service = "default"
  ntp_service = "default"
  interface   = "v70-wireless"
  netmask     = "255.255.255.252"
  status      = "enable"

  ip_range {
    end_ip   = "10.128.70.2"
    id       = 1
    start_ip = "10.128.70.2"
  }
}

resource "fortios_systemdhcp_server" "wireless-wkn-dhcp" {
  # Workstations WLAN DHCP Server
  dns_service     = "default"
  ntp_service     = "default"
  interface       = "res-nwk-sid-wkn"
  netmask         = "255.255.255.240"
  status          = "enable"
  default_gateway = "10.128.80.1"

  ip_range {
    end_ip   = "10.128.80.14"
    id       = 1
    start_ip = "10.128.80.2"
  }
}

resource "fortios_systemdhcp_server" "wireless-iot-dhcp" {
  # IoT WLAN DHCP Server
  dns_service     = "default"
  ntp_service     = "default"
  interface       = "res-nwk-sid-iot"
  netmask         = "255.255.255.192"
  status          = "enable"
  default_gateway = "10.128.90.1"

  ip_range {
    end_ip   = "10.128.90.62"
    id       = 1
    start_ip = "10.128.90.2"
  }
}

resource "fortios_systemdhcp_server" "wireless-gpn-dhcp" {
  # General Purpose WLAN DHCP Server
  dns_service     = "default"
  ntp_service     = "default"
  interface       = "res-nwk-sid-gpn"
  netmask         = "255.255.255.240"
  status          = "enable"
  default_gateway = "10.128.100.1"

  ip_range {
    end_ip   = "10.128.100.14"
    id       = 1
    start_ip = "10.128.100.2"
  }
}

resource "fortios_systemdhcp_server" "work-dhcp" {
  # Work Zone DHCP Server
  dns_service     = "default"
  ntp_service     = "default"
  interface       = "internal2"
  netmask         = "255.255.255.252"
  status          = "enable"
  default_gateway = "10.128.128.1"
  dns_server1     = "208.67.222.222"
  dns_server2     = "208.67.220.220" 
  ip_range {
    end_ip   = "10.128.128.2"
    id       = 1
    start_ip = "10.128.128.2"
  }
}
