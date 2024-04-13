pipeline {
    agent any

    stages {
        stage('CheckOutGit') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cellavito/HelloWorldDockerPrueba01.git']])
                echo 'CheckOut listo'
            }
        }
        stage('Docker Image en construccion') {
            steps {
                script {
                     powershell 'docker build -t holamundo:5.0 .'
                       }
                   }
        }
    }
}
