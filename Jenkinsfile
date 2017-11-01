node {
	
		stage ('test'){
			sh 'ls -ltr'
			checkout scm
			sh 'ls -ltr'
			echo 'inside jenkins'
			sh 'whoami'
			sh 'docker images'
				def customImage = docker.build("pact-demo:${env.BUILD_ID}")
			sh 'docker images'
				
			customImage.inside {
				sh 'ls -ltr'
			}
		}
		pipeline{
		agent {
			docker { image 'node:7-alpine' }
		}
		
        stage('Test') {
            
                sh 'node --version'
            
        }
		}
    
}

