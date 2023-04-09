pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Build') {
      steps {
        sh 'xcodebuild -workspace BankProject.xcworkspace -scheme BankProject build'
      }
    }
  }
  post {
    success {
      script {
        def tags = sh(returnStdout: true, script: 'git tag').trim().split('\\n')
        for (def tag in tags) {
          sh "xcodebuild -workspace BankProject.xcworkspace -scheme BankProject archive -archivePath BankProject.xcarchive -allowProvisioningUpdates -configuration Release -quiet -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates -archivePath BankProject-${tag}.xcarchive -allowProvisioningUpdates"
        }
      }
    }
  }
}
