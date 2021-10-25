pipeline {
    agent none

    stages {
        stage("Build Image") {
            agent {
                docker { image "docker:18.09-git" }
            }

            steps {
                sh 'docker ps'
            }
        }
    }
}