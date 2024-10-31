pipeline {
    agent any

    stages {
        stage('Check Versions') {
            steps {
                sh 'docker -v'  // Verificar la versión de Docker
                sh 'node -v'    // Verificar la versión de Node.js
                sh 'npm -v'     // Verificar la versión de npm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install' // Instalar dependencias
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test' // Ejecutar pruebas
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
