
resource "fortios_firewallservice_custom" "splunk-forwarder" {
  color               = 0
  name                = "splunk-forwarder"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "9997"
  visibility          = "enable"
}