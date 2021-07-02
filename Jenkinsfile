node {
      def app
      stage('Clone repository') {

            checkout scm
      }
      stage('Build image and push') {

            app = docker.build("amitreinich/test-java:latest")
       }
      stage('Test image') {
            app.inside {
             sh 'echo "Tests passed"'
            }
        }
       stage('Push image') {
           docker.withRegistry('https://registry-1.docker.io/v2/', 'docker-hub') {
        app.push()
        }
              }
           }
        }