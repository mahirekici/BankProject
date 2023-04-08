//
//  Jenkinsfile.swift
//  BankProject
//
//  Created by mahir ekici on 8.04.2023.
//

checkout([$class: 'GitSCM',
  branches: [[name: "refs/tags/${GIT_TAG}"]],
  doGenerateSubmoduleConfigurations: false,
  extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '']],
  submoduleCfg: [],
  userRemoteConfigs: [[url: 'https://github.com/mahirekici/BankProject.git']]
])
