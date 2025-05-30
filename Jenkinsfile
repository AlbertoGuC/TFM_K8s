pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('nexus')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t localhost:30009/docker-priv/nextest2:2.0 .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin localhost:30009'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push localhost:30009/docker-priv/nextest2:2.0'
      }
    }
  }
  post {
    always {
      sh 'docker logout localhost:30009'
    }
  }
}
