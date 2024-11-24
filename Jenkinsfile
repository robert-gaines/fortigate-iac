pipeline {
    agent { node { label 'res-phy-prd-rpi-1' } }
    environment {
        TF_VAR_FORTIOS_TOKEN = credentials('fortigate-terraform')
    }
    stages {
        stage('Plan') {
            steps {
                script {
                    dir('/code/fortigate-iac/fortigate') {
                        sh """
                        export TF_VAR_FORTIOS_TOKEN="$TF_VAR_FORTIOS_TOKEN"
                        terraform init || { echo 'Terraform init failed'; exit 1; }
                        terraform plan || { echo 'Terraform plan failed'; exit 1; }
                        """
                    }
                }
            }
        }
        stage('Apply') {
            steps {
                script {
                    dir('/code/fortigate-iac/fortigate') {
                        sh """
                        export TF_VAR_FORTIOS_TOKEN="$TF_VAR_FORTIOS_TOKEN"
                        terraform init || { echo 'Terraform init failed'; exit 1; }
                        terraform apply --auto-approve || { echo 'Terraform apply failed'; exit 1; }
                        """
                    }
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
