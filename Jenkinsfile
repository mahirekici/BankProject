pipeline {
  agent {
    label 'macos'
  }
  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/mahirekici/BankProject'
      }
    }
    stage('Build') {
      steps {
        sh 'xcodebuild -workspace BankProject.xcworkspace -scheme BankProject build'
      }
    }
  }
}
