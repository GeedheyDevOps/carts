pipeline {
    agent any
    tools {
        maven 'Maven-3.6.3' 
    }
    stages {
        stage('Build') {
            steps {
                echo "Building Stage...."
                sh 'mvn clean compile'
            }
        }
        
        stage('Test') {
            steps {
                echo "Testing Stage...."
                sh 'mvn test'
            }
        }
        
        stage('Package') {
            steps {
                echo "Packaging Stage...."
                sh 'mvn -DSkipTests package'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            }
        }
    }
}
