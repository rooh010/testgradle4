pipeline {
    agent any

    triggers {
  //      pollSCM('* * * * *') //polling for changes, here once a minute
    }
    
        tools {
        gradle "GRADLE_LATEST"
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                gradlew.bat
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