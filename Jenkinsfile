pipeline {
    agent any

    environment {
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    stages {
        stage('Clone repository') {
            steps{
                git (url: 'git@github.com:daro1337/simple-webapp.git' branch: 'main')
            }

        stage('Build docker image') {
            setps {
                script {
                    dockerImage = docker.build simple-webapp
                }
            }
        }
        stage('Push docker image') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')
                    }
                }
            }
        }
    }
}