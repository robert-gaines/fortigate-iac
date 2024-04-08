
resource "fortios_antivirus_profile" "av-flow" {
  av_block_log          = "enable"
  av_virus_log          = "enable"
  inspection_mode       = "flow-based"
  name                  = "av-flow"
  scan_mode             = "default"
  comment               = "Flow Based AntiVirus Profile" 
}

resource "fortios_antivirus_profile" "av-proxy" {
  av_block_log          = "enable"
  av_virus_log          = "enable"
  inspection_mode       = "proxy-based"
  name                  = "av-proxy"
  scan_mode             = "default"
  comment               = "Proxy Based AntiVirus Profile" 
}