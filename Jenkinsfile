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
					steps {
	                sh 'Build docker image'
	
	                docker build . -t kirtikumar1982/kirtikumarr/helloworld:${env.BUILD_NUMBER}
	
	                sh 'build docker image step point2'
					}
	            }
	
	            stage('Push Docker Image to Registry') {
				steps {
	
	                sh 'build docker image step point3'
		
	                set +x
	
	                docker login -u='kirtikumar1982' -p='Secure+800'
	
	                set -x
	
	                docker push kirtikumar1982/kirtikumarr/helloworld:${env.BUILD_NUMBER}
	
	                sh 'build docker image step point4 end'
	            }
				}
	
	}
}
