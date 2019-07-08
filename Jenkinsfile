pipeline {
    environment {
        APP_NAME = 'test-project'
        APP_VERSION  = '1.0.2'
    }
    agent {
        docker {
            // image 'gradle:4.10.2-jdk8'
            image 'openjdk:8-jdk'
            args '--privileged'
            args '-v /opt/gradle-4.10.3:/opt/gradle-4.10.3'
            args '-v /opt/.gradle:/opt/.gradle'
            args '-v /root/.m2:/root/.m2'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            args '-v /bin/docker:/bin/docker'
        }
    }
    stages {
        stage('Build by Gradle') {
            steps {
                sh 'pwd'
                sh 'ls -al'
                sh 'export GRADLE_HOME=/opt/gradle-4.10.3'
                sh 'export GRADLE_USER_HOME=/opt/.gradle'
                sh 'export PATH=$PATH:$GRADLE_HOME/bin'
                sh 'gradle -version'
            }
        }
    }
}