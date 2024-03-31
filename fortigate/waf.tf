resource "fortios_waf_profile" "waf-primary" {
  extended_log = "disable"
  external     = "enable"
  name         = "waf-primary"
  
  method {
    status                  = "enable"
    log                     = "enable"
    default_allowed_methods = "get"
  }

  signature {
    main_class {
      id       = "50000000"
      log      = "enable"
      severity = "medium"
    }
  }

  constraint {
    method {
      action   = "allow"
      log      = "enable"
      status   = "enable"
      severity = "low"
    }
  }
}

