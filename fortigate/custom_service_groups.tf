
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

