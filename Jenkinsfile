pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
               // git 'https://github.com/jglick/simple-maven-project-with-tests.git'
                git branch: 'main', url: 'https://github.com/tannabr23596/MavenJenkinsTeenaLab2.git'
                // Run Maven on a Unix agent.
              //  sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                 bat "mvn clean package"
            }
        }
		stage('Docker Build Teena') {
            steps{
                script{
                    bat "docker build -t teena2396/teenajenkinsmavenproject-0.0.1-snapshot ."
                }
            }
        }
		    stage('Docker Login Teena'){
            steps{
                script{
 
                    withCredentials([usernamePassword(credentialsId: 'dockerhubid', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    bat "docker login --username ${USERNAME} --password ${PASSWORD}"
                    }
                }
            }
  		}
  		stage('DockerHub Push Teena'){
            steps{
                script{
 
                    bat "docker push teena2396/teenajenkinsmavenproject-0.0.1-snapshot"
                }
            }
  		}
	}
		
		 
    }
}
