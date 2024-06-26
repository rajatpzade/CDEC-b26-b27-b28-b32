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
             sh ' /opt/maven/bin/mvn sonar:sonar '
                }
            }
        }
        stage('Deploy') { 
            steps {
               deploy adapters: [tomcat8(credentialsId: 'tomcat-cred', path: '', url: 'http://13.38.102.52:8080')], contextPath: '/', onFailure: false, war: '**/*.war'
            }
        }        
    }
}

