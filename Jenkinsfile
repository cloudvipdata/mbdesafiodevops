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
               sh 'az login --service-principal -u 3b418394-2dd0-4b92-85cc-2547c37ba2a7 -p s1L8Q~2Jgr64lCI4AV~jksWmSQfd9OUvfkWR5bvo --tenant 61c17db1-d7e5-43f7-b219-fb323f6d9991'
               sh 'export ARM_SUBSCRIPTION_ID="2e2fa1b5-ea13-4494-8105-4ef621949c4f"'
               sh 'export ARM_TENANT_ID="61c17db1-d7e5-43f7-b219-fb323f6d9991"'
               sh 'ARM_CLIENT_ID="3b418394-2dd0-4b92-85cc-2547c37ba2a7"'
               sh 'export ARM_CLIENT_SECRET="s1L8Q~2Jgr64lCI4AV~jksWmSQfd9OUvfkWR5bvo"'
               sh 'terraform plan'
            }
        }

    }
}
