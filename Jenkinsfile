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
                withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
                    sh 'cd terraform && terraform plan'
                }
            }       
        }
    }
}