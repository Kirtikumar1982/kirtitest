pipeline {
    agent {
		label 'master'
	}

stages {
   stage('checkout') {
            steps {
                node('master'){
                checkout scm
               }
            }
        }

        stage('package') {
            steps {
                node('master'){
                
                sh 'mvn clean install'
               }
            }
        }
	}
}
