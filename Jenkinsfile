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
                sh 'cd terraform && terraform plan'
            }
        } 
    }
}