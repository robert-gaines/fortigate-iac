
resource "fortios_firewallservice_group" "security-service-agents" {

    color             = 0
    name              = "security-service-agents"

    member {
               name  = fortios_firewallservice_custom.wazuh-agent.name
           }
    member {
               name  = fortios_firewallservice_custom.elastic-agent.name
           }
    member {
               name  = fortios_firewallservice_custom.elastic-web.name
           }
    member {
               name  = fortios_firewallservice_custom.velociraptor-client.name
           }
    member {
               name  = fortios_firewallservice_custom.gravwell-client-cleartext.name
           }
    member {
               name  = fortios_firewallservice_custom.gravwell-client-tls.name
           }
}

resource "fortios_firewallservice_group" "security-server-consoles" {

     color             = 0
     name              = "security-server-consoles"

     member  {
                name  = fortios_firewallservice_custom.kibana-default-web.name
             }
     member  {
                name  = fortios_firewallservice_custom.velociraptor-web.name
             }
     member  {   name = "HTTP" }
     member  {   name = "HTTPS" }
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

resource "fortios_firewallservice_group" "honeypot-services" {

    color             = 0
    name              = "honeypot-services"

    member {
                name  = fortios_firewallservice_custom.BACNET.name
           }
    member {
                name  = fortios_firewallservice_custom.MODBUS.name
           }
    member {
                name  = fortios_firewallservice_custom.ETHERNETIP.name
           }
    member {
                name  = fortios_firewallservice_custom.S7-PLC.name
           }
    member {
                name  = "cowrie-ssh"
           }
    member {
                name  = "SMB"
           }
    member {
                name  = "MS-SQL"
           }
    member {
                name  = "DCE-RPC"
           }
    member {
                name  = "HTTP"
           }
}

resource "fortios_firewallservice_group" "print-services" {

    color             = 0
    name              = "print-services"

    member {
                name  = fortios_firewallservice_custom.LinePrinterRead.name
           }
    member {
                name  = fortios_firewallservice_custom.IPP.name
           }
    member {   name = "SNMP" }
    member {   name = "HTTP" }
    member {   name = "HTTPS" }
}

resource "fortios_firewallservice_group" "identity-management-services" {

    color = 0
    name  = "identity-management-services"

    member { name = "DNS" }
    member { name = "LDAP" }
    member { name = "LDAPS" }
    member { name = "LDAP_UDP" }
    member { name = "KERBEROS" }
    
}

