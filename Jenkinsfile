// dev env -> get proj name ->
node {
def JAR_PATH
      stage('SCM CHECKOUT') {
            checkout scm
      }

      stage("BRANCH VALIDATION") {

      if(env.BRANCH_NAME == "master") throw new Exception("You are on the master branch!")
      }

      stage("CREATE JAR") {
       sh 'mvn clean install'
      }

       stage("BUILD DOCKER IMAGE") {
      JAR_PATH = sh(script:"find ./target -type f -name '*.jar'",    returnStdout: true).trim()
       sh "docker build -t test-image --build-arg JAR_PATH=${JAR_PATH}"
       }
      }
