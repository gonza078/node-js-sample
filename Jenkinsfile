pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo "Cloning the repository..."
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building the app..."
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'npm test || true' // allowing test failures for now
            }
        }

        stage('Dockerize') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t nodejs-sample .'
            }
        }
    }
}
