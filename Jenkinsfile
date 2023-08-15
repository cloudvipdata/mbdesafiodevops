pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cloudvipdata/mbdesafiodevops.git']])'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'azureCLI commands: [[exportVariablesString: '', script: '']], principalCredentialId: 'SP_AZ''
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'azureCLI commands: [[exportVariablesString: '', script: '']], principalCredentialId: 'SP_AZ''
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'azureCLI commands: [[exportVariablesString: '', script: '']], principalCredentialId: 'SP_AZ''
                sh 'terraform -auto-approve'
            }
        }
    }
}
