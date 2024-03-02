terraform {
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }
}

provider "fortios" {
    hostname = "192.168.1.99"
    token    = var.FORTIOS_TOKEN
    insecure = "true"
}

resource "fortios_system_global" "res-phy-prd-fwp-global" {
    hostname = "res-phy-prd-fwp"
    alias    = "FGT60ETK20049899"
    timezone = "04"
    dst      = "enable"
    language = "english"
    admintimeout          = 20
    admin_console_timeout = 20
    admin_port            = 8000
    admin_sport           = 8443
    admin_ssh_port        = 2222 
    admin_https_redirect  = "enable" 
    gui_certificates      = true
    strong_crypto         = "enable"
    lldp_transmission     = "enable"
    asymroute             = "disable"
    pre_login_banner      = "enable"
    #
    vdom_mode             = "no-vdom"
    cfg_save              = "automatic"
    #
    switch_controller     = "enable"
    #
    sslvpn_web_mode       = "disable" 


}

