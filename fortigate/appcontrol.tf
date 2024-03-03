
resource "fortios_application_group" "app-control-primary" {
  comment = "Primary Application Control Profile"
  name    = "app-ctrl-primary"
  type    = "category"
  category {
    id = 2
  }
}


resource "fortios_application_list" "app-list-primary" {
  app_replacemsg             = "enable"
  deep_app_inspection        = "enable"
  enforce_default_app_port   = "disable"
  extended_log               = "disable"
  name                       = "app-list-primary"
  options                    = "allow-dns"
  other_application_action   = "pass"
  other_application_log      = "disable"
  unknown_application_action = "pass"
  unknown_application_log    = "disable"
}