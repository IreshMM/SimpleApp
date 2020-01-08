pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                sh './buildscript.sh'
            }
        }

        stage('Deploy To SIT') {
            steps {
                sh '''echo "Deploying to SITi"'''
            }
        }
    }
}
