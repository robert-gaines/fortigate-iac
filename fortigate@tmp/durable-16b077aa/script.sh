
                            export TF_VAR_FORTIOS_TOKEN="dptNbQydb8bbm8k5tgx7x197xh9GQt"
                            terraform init || { echo 'Terraform init failed'; exit 1; }
                            terraform plan || { echo 'Terraform plan failed'; exit 1; }
                            