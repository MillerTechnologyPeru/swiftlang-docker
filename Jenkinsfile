// Jenkins Pipeline - swiftlang docker builder
pipeline {
    agent { label 'imac' }

    environment {
        SWIFT_VERSION = '5.5.2'
        OS = 'ubuntu'
        OS_VERSION = 'bionic'
    }

    stages {
        stage('Build Swift-Slim') {
            steps {
              // cleanWs()
              echo "building swiftlang-slim image"
              dir('swiftlang-slim') {
                sh 'docker buildx build --platform linux/amd64,linux/arm64 --push -t swiftarm/beta-testing:${SWIFT_VERSION}-${OS}-${OS_VERSION}-slim .'
              }
            }
        }
    }
}
