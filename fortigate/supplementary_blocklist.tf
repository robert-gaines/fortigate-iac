# Supplementary Blocklist #

resource "fortios_firewall_address" "MalwareBot_04282024_38_68_52_153" {
    name     = "38.68.52.153"
    subnet   = "38.68.52.153/32"
    comment  = "AndroxGhOst.Malware-04282024"
}

resource "fortios_firewall_address" "WebReconVPS_04282024_104_36_85_120" {
    name     = "104.36.85.120"
    subnet   = "104.36.85.120/32"
    comment  = "RedoubtNET-VPS-04282024"
}

resource "fortios_firewall_address" "CARINet_CIDR_Range_One" {
    name     = "CARINet_CIDR_Range_One"
    subnet   = "71.6.128.0/17"
    comment  = "CARINet_CIDR_Range_One"
}

resource "fortios_firewall_address" "CogentCO_Hostile_VPS" {
    name     = "CogentCO_Hostile_VPS"
    subnet   = "38.104.100.0/24"
    comment  = "CogentCO_Hostile_VPS"
}

resource "fortios_firewall_address" "Ionos_Hostile_VPS" {
    name     = "Ionos_Hostile_VPS"
    subnet   = "66.179.248.0/21"
    comment  = "Ionos_Hostile_VPS"
}

resource "fortios_firewall_address" "Sneaker_Server_CIDR_One" {
    name     = "Sneaker_Server_CIDR_One"
    subnet   = "162.210.245.0/24"
    comment  = "Malicious Web Activity - 07062024"
}

resource "fortios_firewall_address" "Virtuo_CIDR_Range_One" {
    name    = "Virtuo_CIDR_Range_One"
    subnet  = "83.147.52.0/22"
    comment = "Malicious Web Activity - 07062024"
}

resource "fortios_firewall_address" "Godaddy_CIDR_Range_One" {
    name    = "Godaddy_CIDR_Range_One"
    subnet  = "72.167.32.0/20"
    comment = "Malicious Web Activity - 07062024"
}

resource "fortios_firewall_address" "Godaddy_CIDR_Range_Two" {
    name    = "Godaddy_CIDR_Range_Two"
    subnet  = "70.32.80.0/20"
    comment = "Malicious Web Activity - 12222024"
}

resource "fortios_firewall_address" "MSFT_Malicious_VPS_12212024" {
    name    = "MSFT_Malicious_VPS_12212024"
    subnet  = "172.172.130.74/32"
    comment = "Malicious Web Activity - 12212024"
}

resource "fortios_firewall_address" "Metreon_VPN_12202024" {
    name    = "Metreon_VPN_12202024"
    subnet  = "45.131.194.168/32"
    comment = "Malicious Web Activity - 12202024"
}

resource "fortios_firewall_address" "ucloud_cn_12192024" {
    name    = "ucloud_cn_12192024"
    subnet  = "152.32.234.184/32"
    comment = "Malicious Web Activity - 12192024"
}

resource "fortios_firewall_address" "heu_AS10439_01172025" {
    name    = "heu_AS10439_01172025"
    subnet  = "66.240.192.85/32"
    comment = "Malicious Web Activity - 01172025"
}

resource "fortios_firewall_address" "hostpapa_AS36352_01172025" {
    name    = "hostpapa_AS36352_01172025"
    subnet  = "192.210.215.20/32"
    comment = "GPON Form Exploit Attempt - 01172025"
}

resource "fortios_firewall_address" "racknerd_tx_AS36352_01182025" {
    name    = "hostpapa_AS36352_01182025"
    subnet  = "172.245.56.0/22"
    comment = "Fortigate Auth Bypass Exploit Attempt - 01182025"
}

resource "fortios_firewall_addrgrp" "SupplementaryBlockList" {
    allow_routing = "disable"
    color         = 6
    exclude       = "disable"
    name          = "SupplementaryBlockList"
    visibility    = "enable"

    member {
        name = fortios_firewall_address.MalwareBot_04282024_38_68_52_153.name
    }

    member {
        name = fortios_firewall_address.WebReconVPS_04282024_104_36_85_120.name
    }

    member {
        name = fortios_firewall_address.CARINet_CIDR_Range_One.name
    }

    member {
        name = fortios_firewall_address.CogentCO_Hostile_VPS.name
    }

    member {
        name = fortios_firewall_address.Ionos_Hostile_VPS.name
    }

    member {
        name = fortios_firewall_address.Sneaker_Server_CIDR_One.name
    }

    member {
        name = fortios_firewall_address.Virtuo_CIDR_Range_One.name
    }

    member {
        name = fortios_firewall_address.Godaddy_CIDR_Range_One.name
    }

    member {
        name = fortios_firewall_address.heu_AS10439_01172025.name
    }

    member {
        name = fortios_firewall_address.hostpapa_AS36352_01172025.name
    }

    member {
        name = fortios_firewall_address.racknerd_tx_AS36352_01182025.name
    }

}