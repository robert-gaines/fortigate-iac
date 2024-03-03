


resource "fortios_application_list" "app-control-primary" {
  app_replacemsg             = "enable"
  deep_app_inspection        = "enable"
  enforce_default_app_port   = "disable"
  extended_log               = "disable"
  name                       = "app-control-primary"
  comment                    = "Primary Application Control Profile"
  options                    = "allow-dns"
  other_application_action   = "pass"
  other_application_log      = "disable"
  unknown_application_action = "pass"
  unknown_application_log    = "disable"
  #
  p2p_black_list             = "skype,edonkey,bittorrent"
  p2p_block_list             = "skype,edonkey,bittorrent"
  #
  entries {
    id = 2
    action = "block"
  }  

}