pipeline {
  environment {
    registry = "dinaabid/cd"
    registryCredential = 'dockerhub'
  }
 agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/rabebdina/CD_reservation.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
