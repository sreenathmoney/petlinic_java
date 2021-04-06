FROM library/tomcat:9.0.44-jdk8-adoptopenjdk-openj9
user root
run mkdir /tomcatlogs
WORKDIR /tomcat/webapps
EXPOSE 443/tcp
ADD target/test.war /tomcat/webapps/test.war
