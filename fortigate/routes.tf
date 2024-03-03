resource "fortios_router_static" "default_route" {
  dst = "0.0.0.0 0.0.0.0"
  device = "virtual-wan-link"
  distance = 0
}
