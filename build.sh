pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/andrewbarker96/swdv660-manual-job.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh '''
                echo "Building the manual job..."
                # Simulate a build step, such as compiling code
                echo "Compiling code..."
                # Add any additional build steps you need here
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                echo "Running unit tests..."
                # Simulate running tests, replace with actual test command
                echo "All tests passed!"
                '''
            }
        }
        stage('Static Code Analysis') {
            steps {
                sh '''
                echo "Performing static code analysis..."
                # Simulate static code analysis, replace with actual tool command
                echo "Static code analysis completed!"
                '''
            }
        }
    }
}
