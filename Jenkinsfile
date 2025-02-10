pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Srienath2205/ApiGatewayRepository.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    docker.build('jenkinsdelta_api_gateway_img', '-f Dockerfile .')
                }
            }
        }

        stage('Run Docker') {
            steps {
                bat 'docker run -d -p 5360:5360 --name api_gateway jenkinsdelta_api_gateway_img'
            }
        }
    }
}
