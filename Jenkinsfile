// Jenkins Pipeline - swiftlang docker builder
pipeline {
    agent { label 'imac' }

    environment {
        //
        OLD_DATE='2021-09-07-a'
        NEW_DATE='2021-10-18-a'
   }

    stages {
        stage('Testing') {
            steps {
              // cleanWs()
              echo "Testing docker image creation with buildx"
              sh 'ls'
              dir('swiftlang-slim') {
                echo "building swiftlang-slim"
                sh 'ls'
                sh 'docker buildx build --platform linux/amd64,linux/arm64 --push -t swiftarm/swift-slim:5.5.2-bionic-multi-arch-jenkins-ci-test .'
              }
            }
        }
    }
}
