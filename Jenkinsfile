pipeline {
    agent { docker 'nginx' }

    stages {
	stage('Preparation') {
	    steps {
	    	echo 'Preparation...'
	    }
	}

        stage('Build') {
            steps {
                echo 'Building..'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }

	stage('Results') {
	    steps {
		echo 'Result....'	 
	    }
	}
    }
}
