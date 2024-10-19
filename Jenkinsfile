pipeline {
    agent { label 'res-phy-prd-rpi-1' }
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
                        terraform init \
                        terraform plan
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
                        terraform init" \
                        terraform apply --auto-approve
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
