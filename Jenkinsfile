pipeline {
    agent any
    tools{
        terraform 'terraformv127'
    }
    stages {
        stage('Terraform init') {
            steps {
                sh 'cd terraform && terraform init --upgrade'
                sh 'terraform -v'
            }
        }
        stage('Terraform plan') {
            steps {
                withAWS(credentials: 'devops-credentials'){
                    sh 'cd terraform && terraform plan'

                }
                
            }
        } 
        stage('Terraform apply') {
            steps {
                withAWS(credentials: 'devops-credentials'){
                    sh 'cd terraform && terraform apply --auto-approve

                }
                
            }
        } 
    }
}
