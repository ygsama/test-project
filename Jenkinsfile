pipeline {
    environment {
        APP_NAME = 'test-project'
        APP_VERSION  = '1.0.2'
    }
    agent {
        docker {
            image 'openjdk:8-jdk'
            args '--privileged=true'
            args '-v /bin/docker:/bin/docker'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            args '-v /opt/gradle-4.10.3:/opt/gradle-4.10.3:shared'
            args '-v /opt/.gradle:/opt/.gradle:shared'
        }
    }
    stages {
        stage('Build by Gradle') {
            steps {
                sh 'pwd'
                sh 'ls -al'
                sh 'ls -al /opt/gradle-4.10.3'
                sh 'export GRADLE_HOME=/opt/gradle-4.10.3'
                sh 'export GRADLE_USER_HOME=/opt/.gradle'
                sh 'export PATH=$PATH:$GRADLE_HOME/bin'
                sh './opt/gradle-4.10.3/bin/gradle -version'
                sh 'top'
            }
        }
    }
}