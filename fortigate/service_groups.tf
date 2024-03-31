resource "fortios_firewallservice_group" "identity-management-services" {

    color = 0
    name  = "identity-management-services"

    member { name  = "HTTP" }
    member { name  = "HTTPS" }
    member { name  = "LDAP" }
    member { name  = "LDAPS" }
    member { name  = "LDAP_UDP" }
    member { name  = "KERBEROS" }
    
}