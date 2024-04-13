resource "fortios_waf_profile" "waf-primary" {
  extended_log = "enable"
  external     = "enable"
  name         = "waf-primary"
}

