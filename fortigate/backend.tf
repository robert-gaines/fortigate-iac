#terraform {
#  backend "http" {
#    address        = var.TF_BACKEND_ADDRESS
#    lock_address   = "${var.TF_BACKEND_ADDRESS}/lock"
#    unlock_address = "${var.TF_BACKEND_ADDRESS}/lock"
#    username       = var.TF_BACKEND_USERNAME
#    password       = var.TF_BACKEND_PASSWORD
#    lock_method    = "POST"
#    unlock_method  = "DELETE"
#  }
#}

terraform {
  backend "local" {
	path = "/mnt/configuration/fortigate_tfstate/tfstate.json"
  }
}
