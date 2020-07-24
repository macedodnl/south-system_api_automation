pipeline {

    agent {
        docker {
            //necessario que o agente possua ruby e selenium
            image "ruby:alpine"
        }
    }

    stages{
        stage("Build") {
            steps{
                sh "bundle install"
            }
        }
        stage("Tests") {
            sh "bundle exec cucumber"
        }


    }


}