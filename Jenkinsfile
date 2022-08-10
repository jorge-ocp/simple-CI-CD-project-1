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
                sh 'cd terraform && terraform plan'
            }
        }  
    }
}
