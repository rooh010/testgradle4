pipeline {
    agent any

    triggers {
	      pollSCM('H/15 * * * *')
    }
    
        tools {
        gradle "GRADLE_LATEST"
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'gradle ./lib/build.grade'
                echo 'Build Complete'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }


}