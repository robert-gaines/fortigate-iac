
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

