#!/usr/bin/env groovy

@Library('jenkins-shared-lib-rev')_

pipeline {
    agent any
    stages {
        stage('docker Build') {
            steps {
                buildImage 'zahranjamali/roboshop:catalogue-1.0.0'
            }
        }
        stage('docker login and push') {
            steps {
                dockerLogin()
                dockerPush 'zahranjamali/roboshop:catalogue-1.0.0'
            }
        }
    }
}