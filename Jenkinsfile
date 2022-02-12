// Jenkins Pipeline - swiftlang docker builder
pipeline {
    agent { label 'imac' }

    environment {
        SWIFT_VERSION = '5.5.3'
        OS = 'debian'
        OS_VERSION = 'buster'
    }

    stages {
        stage('Build Swift-Slim') {
            steps {
              echo "building swiftlang-slim image"
              dir('swiftlang-slim') {
                sh 'docker buildx build --build-arg SWIFT_VERSION=${SWIFT_VERSION} --progress=plain --platform linux/amd64,linux/arm64 --push -t swiftarm/swift:${SWIFT_VERSION}-${OS}-${OS_VERSION}-slim .'
              }
            }
        }
        stage('Build Swift') {
            steps {
              echo "building swiftlang image"
              dir('swiftlang') {
                sh 'docker buildx build --build-arg SWIFT_VERSION=${SWIFT_VERSION} --progress=plain --platform linux/amd64,linux/arm64 --push -t swiftarm/swift:${SWIFT_VERSION}-${OS}-${OS_VERSION} .'
              }
            }
        }
    }
}
