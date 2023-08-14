pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'main', credentialsId: '0d8d860b-3a76-4d98-9369-27c7e10cfbb4', url: 'https://github.com/cloudvipdata/mbdesafiodevops.git'
                sh 'pwd'
                sh 'ls'
                sh 'terraform init'
                sh 'terraform plan'
            }
        }
        stage('Terraform Init') {
            steps {
                
            }
        }

        stage('AZ LOGIN') {
            steps {

            }
        }

    }
}
