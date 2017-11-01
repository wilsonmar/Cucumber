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
			sh 'pwd'
			}
	}
	docker.image("pact-demo:${env.BUILD_ID}").inside {
		stage("inside container") {
			sh "pwd"
			sh "ls -ltr"          
		}
	}
}


