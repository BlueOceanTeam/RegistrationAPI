node {
	// Get Artifactory server instance, defined in the Artifactory Plugin administration page.
	def server = Artifactory.server "artifactory"
	// Create an Artifactory Maven instance.
	def rtMaven = Artifactory.newMavenBuild()
	def buildInfo
	rtMaven.tool = "maven"

	/*stage('Clone sources') {
		git url: 'https://github.com/BlueOceanTeam/RegistrationAPI.git'
	}*/
	
	/*stage('Artifactory configuration') {
		// Tool name from Jenkins configuration
		rtMaven.tool = "maven"
		// Set Artifactory repositories for dependencies resolution and artifacts deployment.
		rtMaven.deployer releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
		rtMaven.resolver releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
		
		buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install'
		
		server.publishBuildInfo buildInfo
	}*/

	/*stage('Maven build') {
		buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install'
	}*/

	stage('Sonar Scan') {
		// Tool name from Jenkins configuration
		//rtMaven.tool = "maven"
		//MVN="/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven_3.3.9/bin/mvn"
		//"$MVN clean verify sonar:sonar -Dsonar.host.url=http://13.93.165.125:9000 -Dsonar.java.binaries=/etc/sonarqube"
		//rtMaven.run pom: 'pom.xml', goals: '-Dsonar.login=admin -Dsonar.password=admin -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java sonar:sonar -Dsonar.host.url=http://13.93.165.125:9000/'
		//"$MVN clean install deploy -DskipTests"		
		build job: 'RegistrationAPI_Scan', wait: true
	}
	
	stage('QA Build & Deployment') {		
		build job: 'RegistrationAPI_AnsibleDeploy', wait: true
	}
	
	stage('Functional Testing') {		
		build job: 'RegistrationAPI_FunctionalTesting', wait: false
	}
	
	stage('Performance Testing') {		
		build job: 'RegistrationAPI_PerformanceTesting', wait: false
	}
	
	stage('Publish Artifactory') {
		// Tool name from Jenkins configuration
		rtMaven.tool = "maven"
		// Set Artifactory repositories for dependencies resolution and artifacts deployment.
		rtMaven.deployer releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
		rtMaven.resolver releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
		
		buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install'
		
		server.publishBuildInfo buildInfo
	}
	
	stage('PROD Deployment') {		
		//build job: 'RegistrationAPI_AnsibleDeploy_Prod', wait: true
		build job: 'RegistrationAPI_AnsibleDeployOnly_Prod', wait: true		
	}
	
	stage('Acceptance Testing') {		
		build job: 'RegistrationAPI_Acceptancetesting', wait: true
	}
	
	/*stage('Publish build info') {
		server.publishBuildInfo buildInfo
	}*/
	
	stage('Slack Message') {
		slackSend (color: '#FFFF00', message: "RegistrationAPI deployed to PRODUCTION successfully")
	}
  }
