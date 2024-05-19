
resource "fortios_system_externalresource" "proofpoint-emerging-threats" {
  name         = "proofpoint-emerging-threats"
  refresh_rate = 15
  resource     = "https://rules.emergingthreats.net/fwrules/emerging-Block-IPs.txt"
  status       = "enable"
  type         = "address"
}

resource "fortios_system_externalresource" "feodo-botnet-c2" {
  name         = "feodo-botnet-c2"
  refresh_rate = 15
  resource     = "https://feodotracker.abuse.ch/downloads/ipblocklist_aggressive.txt"
  status       = "enable"
  type         = "address"
}

resource "fortios_system_externalresource" "honeypot-intruders" {
  name         = "honeypot-intruders"
  refresh_rate = 15
  resource     = "https://robertwgaines.com/feed.txt"
  status       = "enable"
  type         = "address"
}

resource "fortios_system_externalresource" "checkpoint-tor-nodes" {
  name         = "checkpoint-tor-nodes"
  refresh_rate = 15
  resource     = "https://secureupdates.checkpoint.com/IP-list/TOR.txt"
  status       = "enable"
  type         = "address"
}

resource "fortios_system_externalresource" "firehol-blocklist" {
  name         = "firehol-blocklist"
  refresh_rate = 15
  resource     = "https://raw.githubusercontent.com/ktsaou/blocklist-ipsets/master/firehol_level1.netset"
  status       = "enable"
  type         = "address"
}

resource "fortios_system_externalresource" "cymru-bogons" {
  name         = "cymru-bogons"
  refresh_rate = 15
  resource     = "https://www.team-cymru.org/Services/Bogons/fullbogons-ipv4.txt"
  status       = "enable"
  type         = "address"
}
