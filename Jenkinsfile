pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'main', credentialsId: '0d8d860b-3a76-4d98-9369-27c7e10cfbb4', url: 'https://github.com/cloudvipdata/mbdesafiodevops.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('AZ LOGIN') {
            steps {
                withCredentials([azureServicePrincipal('azureServicePrincipal')]) {
                sh 'az login --service-principal -u ${AZURE_CLIENT_ID} -p ${AZURE_CLIENT_SECRET} --tenant ${AZURE_TENANT_ID}'
               }
                sh 'terraform init'
                sh 'terraform plan'
            }
        }

    }
}
