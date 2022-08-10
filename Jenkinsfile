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
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                    credentialsId: 'devops-credentials'                
            ]]) {
                    sh 'cd terraform && terraform plan'

                }
            }
        }       
    }
}
