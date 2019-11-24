pipeline {

    agent any

    tools {

        

        maven "Maven"

    }
    
    environment {
        
    registry = "dinaabid/cd:Demo"
    
    registryCredential = 'dockerhub'
    
    dockerImage = ''
    
    }
    stages {
        
        stage("clone code") {

            steps {

                script {

                    // Let's clone the source

                    git 'https://github.com/rabebdina/CD_reservation.git';

                }

            }

        }

        stage("clean") {

            steps {

                script {

                    // Let's clone the source

                    sh "mvn clean"

                }

            }
        }
        
        stage("mvn build package") {

            steps {

                script {

                    

                    sh "mvn -B package -DskipTests=true"

                }

            }

        }
        
        stage('Building image') {
            
            steps{
        
                script {
                    
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                
                    
                }
            }
        }
        
        stage('Deploy Image') {
      
            steps{
        
                script {
          
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                    }
                }
            }
        }
    }
}
