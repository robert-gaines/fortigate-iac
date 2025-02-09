
resource "fortios_firewallservice_custom" "LDAPS" {
  color               = 0
  category            = "General" 
  name                = "LDAPS"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "636"
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

resource "fortios_firewallservice_custom" "velociraptor-client" {
  color               = 0
  category            = "General" 
  name                = "velociraptor-client"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8000"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "gravwell-client-cleartext" {
  color               = 0
  category            = "General" 
  name                = "gravwell-client-cleartext"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "4023"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "gravwell-client-tls" {
  color               = 0
  category            = "General" 
  name                = "gravwell-client-tls"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "4024"
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

resource "fortios_firewallservice_custom" "puppet-primary" {
  color               = 0
  category            = "General" 
  name                = "puppet-primary"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8140"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "RSYNC" {
  color               = 0
  category            = "General" 
  name                = "RSYNC"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "873"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "LinePrinterRead" {
  color               = 0
  category            = "General" 
  name                = "LinePrinterRead"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "9100"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "IPP" {
  color               = 0
  category            = "General" 
  name                = "IPP"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "631"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "velociraptor-web" {
  color               = 0
  category            = "General" 
  name                = "velociraptor-web"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8889"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "tcp-8080" {
  color               = 0
  category            = "General" 
  name                = "tcp-8080"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8080"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "cowrie-ssh" {
  color               = 0
  category            = "General" 
  name                = "cowrie-ssh"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "2222"
  visibility          = "enable"
}

resource "fortios_firewallservice_custom" "prometheus-traefik" {
  color               = 0
  category            = "General" 
  name                = "prometheus-traefik"
  protocol            = "TCP"
  protocol_number     = 6
  tcp_portrange       = "8081"
  visibility          = "enable"
}