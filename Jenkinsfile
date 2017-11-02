node{
    stage ('git checkout'){
    	sh 'ls -ltr'	    
    	checkout scm	    
    	sh 'ls -ltr'    	   
    	sh 'docker images'        
	    def customImage = docker.build("cucumber-test:${env.BUILD_ID}")	
	    sh 'docker images'	  
      customImage.inside {
	        sh 'pwd'
          sh 'ls -ltr'	
        }
    }
}
