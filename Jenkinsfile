pipeline {
    agent any
    
    environment {

        registryName = "mibancoaz1001acr"
        registryUrl = 'mibancoaz1001acr.azurecr.io'
        registryCredential = 'ACR'
        dockerImage = ''

    }
    
    stages {

        stage ('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/cloudvipdata/mbdesafiodevops.git']])
                sh 'ls'
                sh 'pwd'
                
            }
        }
        
        stage ('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build registryName
                }
            }
        }
        
        
        stage('Push Image to ACR') {
            steps{   
                script {
                    docker.withRegistry( "http://${registryUrl}", registryCredential ) {
                    dockerImage.push()
            }
        }
      }
    }
        
        stage ('K8S Deploy') {
            steps {
                script {
                    kubeconfig(credentialsId: 'K8S', serverUrl: 'mibancoaz100-dns-5mppcn54.hcp.eastus.azmk8s.io') {
                    sh 'kubectl apply -f k8s-deployment.yaml'
   
                      }        
               
            }
        }
    }
        
        
    }   
}    
