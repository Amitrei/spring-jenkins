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

       stage("JAR LOCATION") {
      JAR_PATH = sh 'find ./target -type f -name "*.jar"'
      echo "full path is ${JAR_PATH}"

       }
      }
