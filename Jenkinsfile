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
                sh 'export ARM_SUBSCRIPTION_ID="708a34d4-d5f8-4550-a158-8434704ebde3"'
                sh 'export ARM_TENANT_ID="80fbce9b-7867-4bf4-8e92-fe6adb722356"'
                sh 'export ARM_CLIENT_ID="645734d7-b8d9-4a12-b966-4a9781b22e1b"'
                sh 'export ARM_CLIENT_SECRET="91a8Q~03fHs0eb6UP1LJZAKWGuRPdP5k2p1XibX_"'
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
