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

        stage('Terraform Plan') {
            steps {

                    withCredentials([azureServicePrincipal(
                    credentialsId: 'Jenkins',
                    subscriptionIdVariable: 'ARM_SUBSCRIPTION_ID',
                    clientIdVariable: 'ARM_CLIENT_ID',
                    clientSecretVariable: 'ARM_CLIENT_SECRET',
                    tenantIdVariable: 'ARM_TENANT_ID'
                ), string(credentialsId: 'access_key', variable: 'ARM_ACCESS_KEY')]) {
                        
                        sh 'terraform plan'
                        
                    }                    }
            }
        }

    }
}
