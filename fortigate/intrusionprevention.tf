resource "fortios_ips_sensor" "ips-primary" {
  name         = "ips-primary"
  comment      = "Primary IPS Profile"
  block_malicious_url = "enable"
  extended_log = "enable"
  scan_botnet_connections = "block"
  
  entries {
    action             = "block"
    log                = "enable"
    log_packet         = "enable"
    log_attack_context = "enable"
    default_status     = "all"
    severity           = "critical"
  }

   entries {
    action             = "block"
    log                = "enable"
    log_packet         = "enable"
    log_attack_context = "enable"
    default_status     = "all"
    severity           = "high"
  }

   entries {
    action             = "block"
    log                = "enable"
    log_packet         = "enable"
    log_attack_context = "enable"
    default_status     = "all"
    severity           = "medium"
  }

}
