pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/ayush2333/2333_ISA2.git'
            }
        }
    stages {
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t 2333 .'
            }
        }
        stage('Delete Old Container') {
            steps {
                bat 'docker rm -f 2333 || true'
            }
        }
        stage('Create and Run Container') {
            steps {
                bat 'docker run -d --name 2333 -p 5000:5000 2333'
            }
        }
    }
}
