pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Cloning GitHub repository
                git 'https://github.com/ayush2333/2333_ISA2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build 
                bat 'docker build -t roll-number .'
            }
        }
        stage('Delete Old Container') {
            steps {
                // Removes container 
                bat 'docker rm -f roll-number || true'
            }
        }
        stage('Run Container') {
            steps {
                // Run the Docker
                bat 'docker run -d --name roll-number -p 5000:5000 roll-number'
            }
        }
    }
}
