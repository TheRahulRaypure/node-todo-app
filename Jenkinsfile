pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git url: 'https://github.com/TheRahulRaypure/node-todo-app.git', branch: 'main'
            }
        }


        stage('Build Docker Image') {
            steps {
                echo "Building the docker imagessss..."
                sh "docker build -t todo-app-node ."

                // script {
                //     dockerImage = docker.build('todo-app-node')
                // }
            }
        }


        stage('Run Container') {
            steps {
                echo "Running the docker container..."
                sh 'docker stop todoapp || true'
                sh 'docker rm todoapp || true'
                sh 'docker run -d -p 3000:3000 --name todoapp todo-app-node'

                // script {
                //     sh 'docker stop todoapp || true'
                //     sh 'docker rm todoapp || true'
                //     sh 'docker run -d -p 3000:3000 --name todoapp todo-app-node'
                // }
            }
        }
    }
}