pipeline {
	agent none
	stages {
		stage('Run PostgreSQL') {
			agent any
			options {
                		timeout(time: 1, unit: 'HOURS') 
            		}
			steps {
				echo 'Hello, PostgreSQL'
				sh './runPostgresReady.sh'
			}
		}
	}
}