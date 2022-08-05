pipeline {
    agent any
    tools {
        terraform 'terraform-v117'
    }

    stages {
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan --auto-approve'
            }
        } 
    }
}