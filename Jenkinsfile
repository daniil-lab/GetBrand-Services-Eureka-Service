pipeline {
    agent docker { image "docker:18.09-git" }

    stages {
        stage("Build Image") {
            steps {
                sh 'docker ps'
            }
        }
    }
}