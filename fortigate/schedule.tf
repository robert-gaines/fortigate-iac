resource "fortios_firewallschedule_recurring" "vulnerability-scanning" {
  color           = 21
  name            = "vulnerability-scanning"
  start           = "19:00"
  end             = "21:00"
  day             = "sunday monday tuesday wednesday thursday friday saturday"
}