// dev env -> get proj name ->
node {
      stage('SCM CHECKOUT') {
            checkout scm
      }

      stage("BRANCH VALIDATION") {

      if(env.BRANCH_NAME == "master") throw new Exception("You are on the master branch!")
      }

      stage("GET POM XML DETAILS") {
       sh 'cat pom.xml | grep `<name>`'
      }

      }
