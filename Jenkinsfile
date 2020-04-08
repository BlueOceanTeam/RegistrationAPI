node {
	// Get Artifactory server instance, defined in the Artifactory Plugin administration page.
	def server = Artifactory.server "artifactory"
	// Create an Artifactory Maven instance.
	def rtMaven = Artifactory.newMavenBuild()
	def buildInfo
	rtMaven.tool = "maven"

	stage('Clone sources') {
		git url: 'https://github.com/BlueOceanTeam/RegistrationAPI.git'
	}
	
	stage('Artifactory configuration') {
		// Tool name from Jenkins configuration
		rtMaven.tool = "maven"
		// Set Artifactory repositories for dependencies resolution and artifacts deployment.
		rtMaven.deployer releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
		rtMaven.resolver releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
	}

	stage('Maven build') {
		buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install'
	}

	stage('Publish build info') {
		server.publishBuildInfo buildInfo
	}

	stage('Slack Message') {
		echo "sending message"
		slackSend (color: '#FFFF00', message: "BUILD AND SCAN SUCCESS for RegistrationAPI")
	}
  }
