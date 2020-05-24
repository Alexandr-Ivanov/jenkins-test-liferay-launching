pipeline {
	agent none
	stages {
		stage('Run PostgreSQL') {
			agent any
			options {
                		timeout(time: 1, unit: 'HOURS') 
            		}
			steps {
				sh './runPostgresReady.sh'
			}
		}
		stage('Run Liferay') {
			agent any
			steps {
				sh './startLiferay.sh'
			}
		}
	}
}