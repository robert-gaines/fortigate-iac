

resource "fortios_logsyslogd_setting" "syslog-config-one" {
    enc_algorithm = "disable"
    mode          = "udp"
    port          = "514"
    server        = "10.128.10.5"
    facility      =  "local0"
    interface     = "servers"
    source_ip     = "10.128.10.1"
}

resource "fortios_logsyslogd_filter" "syslog-filter-one" {
  anomaly           = "enable"
  dns               = "enable"
  filter_type       = "include"
  forward_traffic   = "enable"
  local_traffic     = "enable"
  multicast_traffic = "enable"
  severity          = "information"
  sniffer_traffic   = "enable"
  ssh               = "enable"
}