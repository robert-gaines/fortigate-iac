
resource "fortios_firewallservice_group" "security-service-agents" {

    color             = 0
    name              = "security-service-agents"

    member {
                name  = fortios_firewallservice_custom.splunk-forwarder.name
           }
    member {
                name  = fortios_firewallservice_custom.wazuh-agent.name
           }
    member {
                name  = fortios_firewallservice_custom.elastic-agent.name
           }
    member {
                name  = fortios_firewallservice_custom.elastic-web.name
           }
}

resource "fortios_firewallservice_group" "security-server-consoles" {

    color             = 0
    name              = "security-server-consoles"

    member  {
                name  = fortios_firewallservice_custom.kibana-default-web.name
            }
    member  {
                name  = fortios_firewallservice_custom.splunk-web-interface.name
            }
     member {   name = "HTTP" }
     member {   name = "HTTPS" }
} 

resource "fortios_firewallservice_group" "server-web-consoles" {

    color             = 0
    name              = "server-web-consoles"

    member  {
                name  = fortios_firewallservice_custom.proxmox-console.name
            }
    member  {
                name  = fortios_firewallservice_custom.synology-console.name
            }
     member {   name = "HTTP" }
     member {   name = "HTTPS" }
} 

# resource "fortios_firewallservice_group" "honeypot-services" {

#     color             = 0
#     name              = "honeypot-services"

#     member {
#                 name  = fortios_firewallservice_custom.BACNET.name
#            }
#     member {
#                 name  = fortios_firewallservice_custom.MODBUS.name
#            }
#     member {
#                 name  = fortios_firewallservice_custom.ETHERNETIP.name
#            }
#     member {
#                 name  = fortios_firewallservice_custom.S7-PLC.name
#            }
# }

