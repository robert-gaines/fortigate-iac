resource "fortios_ips_sensor" "ips-primary" {
  name         = "ips-primary"
  comment      = "Primary IPS Profile"
  block_malicious_url = "enable"
  extended_log = "enable"
  scan_botnet_connections = "block"
  
  entries {
    action = "block"
    log = "enable"
    log_packet = "enable"
  }

  filter {
    severity = "low"
    action = "block"
  }

  filter {
    severity = "medium"
    action = "block"
  }

  filter {
    severity = "high"
    action = "block"
  }

  filter {
    severity = "critical"
    action = "block"
  }

}
