
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

resource "fortios_firewallservice_custom" "BACNET" {
  color               = 0
  category            = "General" 
  name                = "BACNET"
  protocol            = "TCP"
  protocol_number     = 17
  udp_portrange       = "47808"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "ETHERNETIP" {
  color               = 0
  category            = "General" 
  name                = "ETHERNETIP"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "44818"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "MODBUS" {
  color               = 0
  category            = "General" 
  name                = "MODBUS"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "502"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "S7-PLC" {
  color               = 0
  category            = "General" 
  name                = "S7-PLC"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "102"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "ephemeral-range-tcp" {
  color               = 0
  category            = "General" 
  name                = "ephemeral-range-tcp"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "1024-49151"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "dynamic-range-tcp" {
  color               = 0
  category            = "General" 
  name                = "dynamic-range-tcp"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "49152-65535"
  visibility          = "enable"
}