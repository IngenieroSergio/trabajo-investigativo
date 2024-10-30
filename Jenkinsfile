pipeline {
    agent {
        any {
            image 'node:20.10.0' // Usa la imagen específica de Node.js
            args '-u root' // Corre como root para evitar problemas de permisos
        }
    }

    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    // Instala las dependencias del proyecto
                    sh 'npm install'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // Ejecuta las pruebas con Jest
                    sh 'npm test'
                }
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
