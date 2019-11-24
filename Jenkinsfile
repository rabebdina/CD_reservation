pipeline {
   agent any

    stages {
        stage('clean') {
            steps {
	    sh "mvn clean"
	}  
	}
        stage('package') {
            steps {
	   
                sh "mvn -B package -DskipTests=true"
            }
        }
        stage('create docker image') {
            steps {
	    
                echo 'create docker image..'
            }
        }
      
    }
}
