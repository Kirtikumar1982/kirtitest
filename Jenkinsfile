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
	
	stage('Cleanup'){
		steps{
			sh 'email notification'
		mail body: 'project build status',
                     from: 'kirtikumar.ramteke@kpit.com',
                     replyTo: 'kirtikumar.ramteke@kpit.com',
                     subject: 'project build status',
                     to: 'kirtikumar.ramteke@kpit.com'
  
      		
		}
 		 }
	
	stage('Build Docker Image') {
					steps {
	                sh 'Build docker image'
	
	                
	
	                sh 'docker build -t kirtikumar1982/helloworld:latest .'
	
	                sh 'build docker image step point2'
					}
	            }
	
	            stage('Push Docker Image to Registry') {
				steps {
	
	                sh 'build docker image step point3'
	
	               
	
	               // set +x
	
	               // docker login -u='kirtikumar1982' -p='Secure+800'
	
	              //  set -x
	
	                sh 'docker push kirtikumar1982/kirtikumarr/helloworld'
	
	                sh 'build docker image step point4 end'
	            }
				}
	
	}
}
