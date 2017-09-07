pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        parallel(
          "Hello": {
            sh '''#!/bin/bash
echo "Hello World"'''
            
          },
          "Hello Miq": {
            sh '''#!/bin/bash
echo "Hello MIQ"'''
            
          }
        )
      }
    }
  }
}