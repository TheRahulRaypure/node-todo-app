pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/TheRahulRaypure/node-todo-app.git'
            }
        }


        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('todo-app-node')
                }
            }
        }


        stage('Run Container') {
            steps {
                script {
                    sh 'docker stop todoapp || true'
                    sh 'docker rm todoapp || true'
                    sh 'docker run -d -p 3000:3000 --name todoapp todo-app-node'
                }
            }
        }
    }
}