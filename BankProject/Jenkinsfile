pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/tags/*']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [[$class: 'SubmoduleOption', disableSubmodules: false, parentCredentials: true, recursiveSubmodules: true, reference: '', trackingSubmodules: false]],
                    submoduleCfg: [],
                    userRemoteConfigs: [[url: 'https://github.com/mahirekici/BankProject.git']]
                ])
            }
        }
        stage('Build') {
            steps {
                sh '''
                    xcodebuild -workspace BankProject.xcworkspace -scheme BankProject -destination 'platform=iOS Simulator,name=iPhone 12' clean build test
                '''
            }
        }
    }
}
