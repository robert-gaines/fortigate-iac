

resource "fortios_log_syslogd_setting" "syslog-config-one" {
    enc_algorithm = "disable"
    mode          = "udp"
    port          = "514"
    facility      =  "user,auth,authpriv,syslog,alert,local0,local1,local2,local3,local4,local5,local6,local7"
    interface     = "servers"
    source_ip     = "10.128.10.1"
}