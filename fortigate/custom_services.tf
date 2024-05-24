
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

resource "fortios_firewallservice_custom" "elastic-web" {
  color               = 0
  category            = "General" 
  name                = "elastic-web"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "9200"
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

resource "fortios_firewallservice_custom" "proxmox-console" {
  color               = 0
  category            = "General" 
  name                = "proxmox-console"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8006"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "synology-console" {
  color               = 0
  category            = "General" 
  name                = "synology-console"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "5001"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "prometheus-exporter" {
  color               = 0
  category            = "General" 
  name                = "prometheus-exporter"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "9100"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "prometheus-windows-exporter" {
  color               = 0
  category            = "General" 
  name                = "prometheus-windows-exporter"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "9182"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "adds-dynamic-range" {
  color               = 0
  category            = "General" 
  name                = "adds-dynamic-range"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "49152-65535"
  visibility          = "enable"
}