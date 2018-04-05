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
	
	stage('Build Docker Image') {
	
	                sh """
	
	                #!/bin/bash
	
	                docker build . -t kirtikumar1982/kirtikumarr/helloworld:${env.BUILD_NUMBER}
	
	                """
	
	            }
	
	            stage('Push Docker Image to Registry') {
	
	                sh """
	
	                #!/bin/bash
	
	                set +x
	
	                docker login -u='kirtikumar1982' -p='Secure+800'
	
	                set -x
	
	                docker push kirtikumar1982/kirtikumarr/helloworld:${env.BUILD_NUMBER}
	
	                """
	            }
	}
}
