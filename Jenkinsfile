// Jenkins Pipeline - swiftlang docker builder
// NOTE - :latest tag is now set to ubuntu jammy
pipeline {
    agent { label 'imac' }

    environment {
        SWIFT_VERSION = '5.6.1'
        OS = 'ubuntu'
        OS_VERSION = 'jammy'
    }

    stages {
        stage('Build Swift-Slim') {
            steps {
              script {
               currentBuild.displayName = "swift-${SWIFT_VERSION}-RELEASE"
              }
              echo "building swiftlang-slim image"
              dir('swiftlang-slim') {
                sh 'docker buildx build --build-arg SWIFT_VERSION=${SWIFT_VERSION} --progress=plain --platform linux/amd64,linux/arm64 --push -t swiftarm/swift:latest-slim .'
              }
            }
        }
        stage('Build Swift') {
            steps {
              echo "building swiftlang image"
              dir('swiftlang') {
                sh 'docker buildx build --build-arg SWIFT_VERSION=${SWIFT_VERSION} --progress=plain --platform linux/amd64,linux/arm64 --push -t swiftarm/swift:latest .'
              }
            }
        }
    }
}
