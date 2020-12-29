pipeline {
    agent any

    triggers {
  //      pollSCM('* * * * *') //polling for changes, here once a minute
    }
    
        tools {
        gradle "GRADLE_6.7.1"
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