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
                    sh '''
                        chmod +x env_setup.sh
                        ./envsetup.sh
                    '''
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
                }
            }
        }

        stage('Start Services') {
            steps {
                script {
                    sh 'sudo supervisorctl reread'
                    sh 'sudo supervisorctl update'
                    sh 'sudo supervisorctl start all'

                    sh 'sudo service nginx restart'
                }
            }
        }
    }
}