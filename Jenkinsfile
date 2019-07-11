pipeline {
    environment {
        APP_NAME = 'test-project'
        APP_VERSION  = '1.0.2'
    }
    agent {
        docker {
            image 'gradle:4.10.3-jdk8'
            args '--privileged'
            args '-v gradle-data:/home/gradle/.gradle'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            args '-v /bin/docker:/bin/docker'
        }
    }
    stages {
        stage('Build by Gradle') {
            steps {
                sh 'pwd'
                sh 'ls -al'
                sh 'gradle bootjar'
            }
        }
        stage('Deliver to Nexus') {
            steps {
                sh 'pwd'
                sh 'ls -al'
                sh 'cp Dockerfile ./build/libs/'
                sh 'ls -al ./build/libs'
                sh 'docker build -t 10.2.21.95:10001/${APP_NAME}:${APP_VERSION} ./build/libs'
                sh 'docker login -u publisher -p publisher 10.2.21.95:10001'
                sh 'docker push 10.2.21.95:10001/${APP_NAME}:${APP_VERSION}'
            }
        }
        stage('Deploy in Docker') {
            steps {
                sh 'docker run -d -p 9090:8080  10.2.21.95:10001/${APP_NAME}:${APP_VERSION}'
            }
        }
    }
}