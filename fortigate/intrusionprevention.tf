
resource fortios_ips_global "ips-primary" {
  anomaly_mode           = "continuous"
  database               = "regular"
  deep_app_insp_db_limit = 0
  deep_app_insp_timeout  = 0
  engine_count           = 0
  exclude_signatures     = "industrial"
  fail_open              = "disable"
  intelligent_mode       = "enable"
  session_limit_mode     = "heuristic"
  socket_size            = 0
  sync_session_ttl       = "enable"
  traffic_submit         = "disable"
}