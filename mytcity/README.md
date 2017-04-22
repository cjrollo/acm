**Dockerized TeamCity Build Chain**

_Why?_  

This is a complex compose that builds a full continuous deployment build chain, based on TeamCity and designed with support for Go development, automated testing, etc.

_How?_  

1. Git clone repo…
2. cd repo…
3. docker-compose up

_What?_

This fires up a unique network and links all the containers together. As its a “demo” system, the artifacts are stashed locally. And configuration or runtime scripts are included in PWD and ADDed into the container as appropriate.

_Who?_  

Here is a list of the components included, with some reference links…

Git:  
				https://git-scm.com/  
				https://store.docker.com/images/gitlab-enterprise-edition?tab=description  
				https://store.docker.com/images/gitlab-community-edition?tab=description  

Artifactory:  
        https://www.jfrog.com/artifactory/  
				https://hub.docker.com/r/mattgruter/artifactory/  

Protex:  
    https://www.blackducksoftware.com/products/protex  
	https://blackducksoftware.atlassian.net/wiki/display/INTDOCS/Home  
	https://github.com/blackducksoftware/hub-artifactory  
	https://github.com/blackducksoftware/hub-maven-plugin  
	https://github.com/blackducksoftware/hub-jenkins  
	https://github.com/blackducksoftware/hub-teamcity  
	
Klocwork:  
    http://www.klocwork.com/  

TeamCity:  
    https://www.jetbrains.com/teamcity/  
		https://hub.docker.com/r/jetbrains/teamcity-server/  
		https://hub.docker.com/r/jetbrains/teamcity-agent/  
		https://hub.docker.com/r/jetbrains/teamcity-minimal-agent/  

Jenkins:  
    https://jenkins.io/  
		https://store.docker.com/images/jenkins?tab=description  

Robot Framework:  
    http://robotframework.org/  
    https://hub.docker.com/r/manycoding/robotframework/  

Golang:  
    https://golang.org/  
		https://store.docker.com/images/golang?tab=description  

Docker:  
    https://store.docker.com/  
