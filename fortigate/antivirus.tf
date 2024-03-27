
resource "fortios_antivirus_profile" "av-flow" {
  av_block_log          = "enable"
  av_virus_log          = "enable"
  inspection_mode       = "flow-based"
  name                  = "av-flow"
  scan_mode             = "default"
  comment               = "Flow Based AntiVirus Profile" 
}