resource "fortios_ips_sensor" "ips-primary" {
  name         = "ips-primary"
  comment      = "Primary IPS Profile"
  block_malicious_url = "enable"
  extended_log = "enable"
  scan_botnet_connections = "block"
  
}
