pipeline {
    agent any
    
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    
        stage ("terraform init") {
            steps {
                bat ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                bat ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                bat ('terraform apply -auto-approve')
           }
        }
    }
}
