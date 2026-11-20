pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Source code checked out from GitHub'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-docker-demo:v1 .'
            }
        }

        stage('Verify Docker Image') {
            steps {
                sh 'docker images'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f jenkins-demo || true
                    docker run -d \
                    --name jenkins-demo \
                    -p 8081:80 \
                    jenkins-docker-demo:v1
                '''
            }
        }
    }
}
