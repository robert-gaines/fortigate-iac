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