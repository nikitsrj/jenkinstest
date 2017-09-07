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
          "Hello MIQ": {
            sh '''#!/bin/bash
echo " Hello MIQ"'''
            
          }
        )
      }
    }
  }
}