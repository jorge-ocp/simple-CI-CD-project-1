pipeline {
    agent any
    stages {
        stage('Terraform init') {
            steps {
                sh 'cd terraform && terraform init --upgrade'
            }
        }
        stage('Terraform plan') {
            steps {
                withAWS(credentials: 'devops-credentials', region: 'us-west-2') {
                   sh 'cd terraform && terraform plan'
                   
                }
            }       
        }
    }
}