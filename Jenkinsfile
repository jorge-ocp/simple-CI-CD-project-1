pipeline {
    agent any
    tools {
        terraform 'terraform-v117'
    }
    stages {
        stage('Terraform stage') {
            steps {
                withAWS(credentials: 'devops-credentials', region: 'us-west-2'){
                    sh 'cd terraform && terraform init'
                    sh 'terraform plan'
                    sh 'terraform apply --auto-approve'
                }
            }       
        }
    }
}