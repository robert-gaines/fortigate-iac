
resource "fortios_system_netflow" "netflow-primary" {
    active_flow_timeout = 30
    collector_ip = "10.128.10.7"
    collector_port = 2055
    inactive_flow_timeout = 15
    source_ip = "10.128.10.1"
    template_tx_counter = 20
    template_tx_timeout = 30
}