
resource "fortios_firewallservice_custom" "LDAPS" {
  color               = 0
  category            = "General" 
  name                = "LDAPS"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "636"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "splunk-forwarder" {
  color               = 0
  category            = "General" 
  name                = "splunk-forwarder"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "9997"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "wazuh-agent" {
  color               = 0
  category            = "General" 
  name                = "wazuh-agent"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "1514-1515"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "elastic-agent" {
  color               = 0
  category            = "General" 
  name                = "elastic-agent"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8220"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "kibana-default-web" {
  color               = 0
  category            = "General" 
  name                = "kibana-default-web"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "5601"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "splunk-web-interface" {
  color               = 0
  category            = "General" 
  name                = "splunk-web-interface"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8000"
  visibility          = "enable"
}