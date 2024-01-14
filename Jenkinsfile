pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install requirements') {
            steps {
                script {
                    sh 'chmod +x env_setup.sh'
                    sh './env_setup.sh'
                }
            }
        }

        stage('Stop Services') {
            steps {
                script {
                    sh 'sudo supervisorctl stop all'
                }
            }
        }

        stage('Pull Code Changes') {
            steps {
                script {
                    sh 'git pull origin master'
                    sh 'chmod +x collectstatic.sh'
                    sh './collectstatic.sh'
                }
            }
        }
    }
}
