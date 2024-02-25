
resource "fortios_system_externalresource" "proofpoint-emerging-threats" {
  name         = "proofpoint-emerging-threats"
  refresh_rate = 5
  resource     = "https://rules.emergingthreats.net/fwrules/emerging-Block-IPs.txt"
  status       = "enable"
}