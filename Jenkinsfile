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
		
		mail body: 'project build status',
                     from: 'kirtikumar.ramteke@kpit.com',
                     replyTo: 'kirtikumar.ramteke@kpit.com',
                     subject: 'project build status',
                     to: 'kirtikumar.ramteke@kpit.com'
  
      		
		}
 		 }
	
	
	}
}
