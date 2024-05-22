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
               echo 'successfully build code '
            }
        }
        stage('Test') { 
            steps {
                echo 'hurreyyy test successfull'
            }
        }
        stage('Deploy') { 
            steps {
               echo 'Thank You to Deploy' 
            }
        }        
    }
}