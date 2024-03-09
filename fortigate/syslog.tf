

resource "fortios_logsyslogd_setting" "syslog-config-one" {
    enc_algorithm = "disable"
    mode          = "udp"
    port          = "514"
    facility      =  "local7"
    interface     = "servers"
    source_ip     = "10.128.10.1"
}