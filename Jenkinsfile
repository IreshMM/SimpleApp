pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                sh '''. /opt/IBM/ace-11.0.0.7/server/bin/mqsiprofile'''
                sh '''echo Build'''
            }
        }

        stage('Deploy To SIT') {
            steps {
                sh '''echo "Deploying to SITi"'''
            }
        }
    }
}
