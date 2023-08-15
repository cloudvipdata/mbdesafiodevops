pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/cloudvipdata/mbdesafiodevops.git'
                sh 'ls'
            }
        }
       stage('Terraform Init') {
            steps {
                azureCLI commands: [[exportVariablesString: '', script: '']], principalCredentialId: 'SP_AZ'
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                azureCLI commands: [[exportVariablesString: '', script: '']], principalCredentialId: 'SP_AZ'
                sh 'terraform plan'
            }
        }
/*
        stage('Terraform Apply') {
            steps {
                sh 'azureCLI commands: [[exportVariablesString: '', script: '']], principalCredentialId: 'SP_AZ''
                sh 'terraform -auto-approve'
            }
        }
        */
    }
}
