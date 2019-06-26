
pipeline {
    agent {
        docker {
            image 'gradle:4.10.3-jdk8'
            args '-v /root/.m2:/root/.m2  /root/.gradle:/root.gradle'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle bootjar'
            }
        }
    }
}