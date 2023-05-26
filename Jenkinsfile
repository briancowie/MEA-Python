pipeline {
    agent any
    stages {
        stage ('Pre-build cleanup') {
        steps{
            sh 'docker system prune -f'
        }
     }
        stage('Clone repo') {
            steps {
                git url: 'https://github.com/briancowie/MEA-Python', branch: 'master'
            }
        }
        stage('Build and run container'){
            steps { 
                sh '''
                docker network create sprint2-net
                docker build -t sprint2:v1 .
                docker run -d --network sprint2-net --name sprint2 sprint2:v1
                docker run -d -p 80:80 --mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf --network duo-net --name nginx nginx:alpine
                '''
                }
            }
    }
}
