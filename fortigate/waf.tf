resource "fortios_waf_profile" "waf-primary" {
  extended_log = "disable"
  external     = "enable"
  name         = "waf-primary"
  
  method {
    status                  = "enable"
    log                     = "enable"
    default_allowed_methods = "get"
  }
}

resource "fortios_waf_signature" "waf-primary-signatures" {
  fosid = "50000000"
}