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
	
stage('Build & SonarQube Scan') {
      MVN="/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven_3.3.9/bin/mvn"
      echo "running clean verify sonar"
      "$MVN clean verify sonar:sonar -Dsonar.host.url=http://13.93.165.125:9000 -Dsonar.java.binaries=/etc/sonarqube"
      echo "running clean install"
      "$MVN clean install deploy -DskipTests"
  }

	stage('Slack Message') {
            steps {
                slackSend channel: '#devopslearning',
                    color: 'good',
                 //   message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}"
            	      message: "Build is successful"
            }
	}

    stage('Artifactory configuration') {
        // Tool name from Jenkins configuration
        rtMaven.tool = "maven"
        // Set Artifactory repositories for dependencies resolution and artifacts deployment.
        rtMaven.deployer releaseRepo:'libs-release-local', snapshotRepo:'libs-snapshot-local', server: server
        rtMaven.resolver releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
    }

  //  stage('Maven build') {
       // buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install'
 //   }

//    stage('Publish build info') {
      //  server.publishBuildInfo buildInfo
//    }
    }
	 

