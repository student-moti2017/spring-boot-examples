FROM tomcat:alpine
MAINTAINER Moti Abudi

#Override the default tomcat conf files and set user credtials and allow managing from any host
COPY docker/conf/server.xml                           /usr/local/tomcat/conf/server.xml  
COPY docker/conf/tomcat-users.xml                     /usr/local/tomcat/conf/tomcat-users.xml 
COPY docker/webapps/manager/META-INF/context.xml      /usr/local/tomcat/webapps/manager/META-INF/context.xml 
COPY docker/webapps/host-manager/META-INF/context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml

#add the deployed app to the app web server
COPY spring-boot-package-war/target/*.war                                     /usr/local/tomcat/webapps/

EXPOSE 8080
EXPOSE 443
