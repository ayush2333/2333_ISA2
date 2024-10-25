pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/ayush2333/2333_ISA2.git
'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t roll-number .'
            }
        }
        stage('Delete Old Container') {
            steps {
                sh 'docker rm -f roll-number || true'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d --name roll-number -p 5000:5000 roll-number'
            }
        }
    }
}
