@Library('roboshop-shared-library@main') _

pipeline {
    agent any 
    stages {
        // This should run for every commit on feature branch
        stage('Lint checks') {
            steps {
                script {
                    nodejs.lintcheck()
                }
            }
        }
    } // end of the stages
}  // end of the pipeline