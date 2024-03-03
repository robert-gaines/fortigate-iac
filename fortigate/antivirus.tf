resource "fortios_antivirus_profile" "av-flow" {
  av_block_log          = "enable"
  av_virus_log          = "enable"
  extended_log          = "disable"
  ftgd_analytics        = "disable"
  inspection_mode       = "flow-based"
  mobile_malware_db     = "enable"
  name                  = "av-flow"
  scan_mode             = "quick"
}