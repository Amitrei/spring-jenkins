pipeline{
    agent any
    stages{
        stage("pull from SCM"){
            steps{
                git 'https://github.com/Amitrei/spring-jenkins.git' 
                
            }
           
        }

        stage("docker build") {
            steps{
                script{
                                    docker.build("test-java")

                }
            }
            }
    }
 
}