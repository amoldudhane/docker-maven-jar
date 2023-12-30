pipeline{
    agent any
    tools{
        maven 'maven-3.9.6'
    }
    stages{
        stage('get-code'){
            steps{
                git 'https://github.com/amoldudhane/docker-maven-jar.git'
                sh 'mvn clean package'
            }
        }
        
        stage('docker build and publish'){
            steps{
            sh 'docker build -t amoldudhane/demo2 .'
            sh 'docker login -u amoldudhane -p dckr_pat_8oK8MbX3jVMFASJF67zaPuc8A8M'
            sh 'docker push amoldudhane/demo2'
        }
    }
}
}
