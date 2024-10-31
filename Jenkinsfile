pipeline {
    agent any

    stages {
        stage('Check Versions') {
            steps {
                sh 'docker -v'  
                sh 'node -v'    
                sh 'npm -v'     
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install' 
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test' 
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed'
        }
        success {
            echo 'All tests passed!'
        }
        failure {
            echo 'Some tests failed.'
        }
    }
}
