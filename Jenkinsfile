// Jenkins Pipeline - swiftlang docker builder
pipeline {
    agent { label 'imac' }

    stages {
        stage('Build Swift-Slim') {
            steps {
              // cleanWs()
              echo "building swiftlang-slim image"
              dir('swiftlang-slim') {
                sh 'docker buildx build --platform linux/amd64,linux/arm64 --push -t swiftarm/beta-testing:5.5.2-ubuntu-focal-slim .'
              }
            }
        }
    }
}
