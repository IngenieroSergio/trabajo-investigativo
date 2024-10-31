pipeline {
    agent {
        docker {
            image 'node:20.10.0' // Asegúrate de que la imagen sea correcta
            args '-u root' // Usar root para evitar problemas de permisos
        }
    }

    stages {
        stage('Install Dependencies') {
            steps {
                // Instalar dependencias usando npm
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                // Ejecutar pruebas
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
