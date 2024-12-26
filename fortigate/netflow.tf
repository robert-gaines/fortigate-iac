
resource "fortios_system_netflow" "netflow-primary" {
    active_flow_timeout = 60
    inactive_flow_timeout = 15
    template_tx_counter = 20
    template_tx_timeout = 60

    collectors {
        id = "1"
        collector_ip = "10.128.10.7"
        collector_port = 2055
        interface_select_method = "auto"
        interface="servers"
    }

    collectors {
        id = "2"
        collector_ip = "10.128.10.5"
        collector_port = 2055
        interface_select_method = "auto"
        interface="servers"
    }
}