pipeline {
    agent any
    tools {
        terraform 'terraform-v117'
    }

    stages {
        stage('Terraform init') {
            steps {
                sh 'cd terraform && terraform init'
            }
        }
        stage('Terraform plan') {
            steps {
                withAWS(credentials: 'devops-credentials', region: 'us-west-2'){
                    sh 'cd terraform && terraform plan'
                }
            }       
        }
        stage('Terraform apply') {
            steps {
                sh 'cd terraform && terraform apply --auto-approve'
            }
        } 
    }
}