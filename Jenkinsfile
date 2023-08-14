pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch: 'main', credentialsId: '0d8d860b-3a76-4d98-9369-27c7e10cfbb4', url: 'https://github.com/cloudvipdata/mbdesafiodevops.git'
                sh 'pwd'
                sh 'ls'
                sh 'chmod 777 /var/lib/jenkins/workspace/01_IAC'
            }
        }
        
        stage('AZ SP LOGIN') {
            steps {
                sh 'az login --service-principal -u 3b418394-2dd0-4b92-85cc-2547c37ba2a7 -p s1L8Q~2Jgr64lCI4AV~jksWmSQfd9OUvfkWR5bvo --tenant 61c17db1-d7e5-43f7-b219-fb323f6d9991'
            }
        }
    }
}
