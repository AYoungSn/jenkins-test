node {
	def app
	stage('Clone repository') {
		git 'https://github.com/AYoungSn/jenkins-test.git'
	}
	stage('Build image') {
		app = docker.build("dudtjs0920/sswu-opensource")
	}
	stage('Test image') {
		app.inside {
			sh 'make test'
		}
	}
	stage('Push image') {
		docker.withRegistry('https://registry.hub.docker.com', 'dudtjs0920') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
}
