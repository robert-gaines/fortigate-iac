resource "fortios_waf_profile" "waf-primary" {
  extended_log = "disable"
  external     = "enable"
  name         = "waf-primary"
  
  
}