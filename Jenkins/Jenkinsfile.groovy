pipeline {
    agent any 
    stages {
        stage('Pull') { 
            steps {
                git 'https://github.com/rajatpzade/studentapp.ui.git' 
            }
        }
        stage('Build') { 
            steps {
               sh '/opt/maven/bin/mvn clean package'
            }
        }
        stage('test') { 
            steps {
                 withSonarQubeEnv ('sonar') {
             sh ' mvn sonar:sonar '
                }
            }
        }
        stage('Deploy') { 
            steps {
               echo 'Thank You to Deploy' 
            }
        }        
    }
}
Jenkins/Jenkinsfile.groovy