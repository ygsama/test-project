
pipeline {
    agent {
        docker {
            image 'gradle:4.10.2-jre8-slim'
            args '-v /root/.m2:/root/.m2 '
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}