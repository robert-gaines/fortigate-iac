terraform {
  backend "http" {
    address        = var.TF_BACKEND_ADDRESS
    lock_address   = "${var.TF_BACKEND_ADDRESS}/lock"
    unlock_address = "${var.TF_BACKEND_ADDRESS}/lock"
    username       = var.TF_BACKEND_USERNAME
    password       = var.TF_BACKEND_PASSWORD
  }
}
