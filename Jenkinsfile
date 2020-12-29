pipeline {
    agent any

    triggers {
	      pollSCM('H/15 * * * *')
    }
    
        tools {
        gradle "GRADLE_LATEST"
    }
    stages {
    
        stage('Test') {
            steps {
                echo 'Testing..'
                bat 'gradle test'
            }
        }
            
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'gradle build'
            }
        }

        stage('Containerise') {
            steps {
                echo 'Dockering..'
                bat 'docker build . -t testgradle4'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }


}