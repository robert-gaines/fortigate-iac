
resource "fortios_antivirus_profile" "av-flow" {
  analytics_bl_filetype = 0
  analytics_db          = "disable"
  analytics_max_upload  = 10
  analytics_wl_filetype = 0
  av_block_log          = "enable"
  av_virus_log          = "enable"
  extended_log          = "disable"
  ftgd_analytics        = "disable"
  inspection_mode       = "flow-based"
  mobile_malware_db     = "enable"
  name                  = "1"
  scan_mode             = "quick"
}