
pipeline {
    agent none 
    stages {
        stage('Example Build') {
            agent { docker "rest-test" } 
            steps {
                sh 'ls -ltr'
            }
        }
       
    }
}

