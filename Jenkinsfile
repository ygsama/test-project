pipeline {
    environment {
        APP_NAME = 'test-project'
        APP_VERSION  = '1.0.2'
    }
    agent {
        docker {
            // image '10.2.21.95:10001/zj-gradle:4.10.3'
            image 'gradle:4.10.3-jdk8'
            args '-v /root/.gradle:/home/gradle/.gradle'
            args '--privileged'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            args '-v /bin/docker:/bin/docker'
        }
    }
    stages {
        stage('Build by Gradle') {
            steps {
                sh 'pwd'
                sh 'ls -al'
                sh 'ls -al /root/.gradle'
                sh 'ls -al /home/gradle/.gradle'
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
                // sh 'docker login -u publisher -p publisher 10.2.21.95:10001'
                // sh 'docker push 10.2.21.95:10001/${APP_NAME}:${APP_VERSION}'
            }
        }
        stage('Deploy in Docker') {
            steps {
                // sh 'docker run -d -p 9091:8080  10.2.21.95:10001/${APP_NAME}:${APP_VERSION}'
                sh 'ls -al '
            }
        }
    }
}