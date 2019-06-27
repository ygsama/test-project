
pipeline {
    agent {
        docker {
            image 'gradle:4.10.2-jdk8'
            args '--privileged'
            args '-v /root/.gradle:/root/.gradle'
            args '-v /root/.m2:/root/.m2'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            args '-v $(which docker)r:/bin/docker'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle bootjar'
            }
        }
        stage('Image') {
            steps {
                sh 'pwd'
                sh 'cp ./Dockerfile ./build/libs/'
                sh 'ls -al'
                sh 'cd ./build/libs'
                sh 'ls -al'
                sh 'cp ./build/libs/test-project-1.0.0-boot.jar ./'
                sh 'ls -al'
                sh 'docker build -t 10.2.21.95:10001/test-project:1.0.0'
                sh 'docker run -d -p 9090:8080  10.2.21.95:10001/test-project:1.0.0'
            }
        }
    }
}