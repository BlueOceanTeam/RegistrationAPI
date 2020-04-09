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
	stage('SonarQubeJob') {
        steps {
        node {
                    echo "Triggering job for sonarqube"
                    build job: 'RegistrationAPI_Scan', wait: false
        }
	}
	stage('Build & SonarQube Scan') {
		// Tool name from Jenkins configuration
		rtMaven.tool = "maven"
		MVN="/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven_3.3.9/bin/mvn"
		echo "running SonarQube Scan "
		//"$MVN clean verify sonar:sonar -Dsonar.host.url=http://13.93.165.125:9000 -Dsonar.java.binaries=/etc/sonarqube"
		//rtMaven.run pom: 'pom.xml', goals: '-Dsonar.login=admin -Dsonar.password=admin -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java sonar:sonar -Dsonar.host.url=http://13.93.165.125:9000/'
		rtMaven.run pom: 'pom.xml', goals: '-Dsonar.login=admin -Dsonar.password=admin -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java sonar:sonar -Dsonar.host.url=http://13.93.165.125:9000/'
		//echo "running clean install"  mvn org.sonarsource.scanner.maven:sonar-maven-plugin:RELEASE:sonar
		//"$MVN clean install deploy -DskipTests"
	}
	
	stage('Slack Message') {
		echo "sending message"
		slackSend (color: '#FFFF00', message: "BUILD AND SCAN SUCCESS for RegistrationAPI")
	}
  }
