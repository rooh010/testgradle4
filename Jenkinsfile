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
                powershell 'minikube docker-env | Invoke-Expression'
                powershell 'docker build . -t testgradle4'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                powershell 'kubectl run testgradle4 --image=testgradle4:latest --image-pull-policy=Never'
            }
        }
    }


}