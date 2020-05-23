pipeline {
	agent none
	stages {
		stage('Run PostgreSQL') {
			agent any
			steps {
				echo 'Hello, PostgreSQL'
				sh 'docker run -d --publish 5432:5432 --name postgres -e POSTGRES_PASSWORD=postgres postgresql:1.0'
			}
		}
	}
}