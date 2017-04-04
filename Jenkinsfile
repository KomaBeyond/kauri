pipeline {
    agent any
    tool name: docker

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

	
    	    post {
    	        always {
    	            echo 'stage - This will always run'
    	        }

    	        success {
    	            echo 'stage - This will run only if successful'
    	        }

    	        failure {
    	            echo 'This will run only if failed'
    	        }

    	        unstable {
    	            echo 'This will run only if the run was marked as unstable'
    	        }

    	        changed {
    	            echo 'This will run only if the state of the Pipeline has changed'
    	        }
    	    }
	}
    }

    post {
	always {
	    echo 'this will always run'
	}

	success {
	    echo 'this will run only if successful'
	}

	failure {
	    echo 'this will run only if failed'
	}

	unstable {
	    echo 'this will run only if the run was marked as unstable'
	}

	changed {
	    echo 'this will run only if the state of the pipeline has changed'
	}
    }
}
