pipeline{
    agent any
    stages{
        stage('Clone the Code'){
            steps{
                echo "Cloning the code"
                git url: "https://github.com/TheRahulRaypure/node-todo-app.git", branch:"main"
            }
        }
        stage('Build Docker Image'){
            steps{
                echo "Building the docker image..."
                sh 'docker build -t todo-app-node .'
            }
        }
        stage('Run Container'){
            steps{
                echo "Running the container..."
                sh 'docker stop todoapp || true'
                sh 'docker rm todoapp || true'
                sh 'docker run -t'
            }
        }
    }
}



// pipeline{
//     agent any
//     stages{
//         stage('First Stage - Clone'){
//             steps{
//                 git url: "https://github.com/TheRahulRaypure/node-todo-app.git", branch:"main"
//             }
//         }
//         stage('Second Stage - Build image'){
//             steps{
//                 sh "docker build -t todo-app-node ."
//             }
//         }
//         stage('Third Stage - Run Containers'){
//             steps{
//                 sh "docker-compose down || true"
//                 sh "docker-compose up -d --build || true"
//             }
//         }
//     }
// }