FROM tomcat:alpine
MAINTAINER Moti Abudi


#Override the default tomcat conf files and set user credtials and allow managing from any host
COPY conf/server.xml  /usr/local/tomcat/conf/server.xml  
COPY conf/tomcat-users.xml  	/usr/local/tomcat/conf/tomcat-users.xml 
COPY webapps/manager/META-INF/context.xml  /usr/local/tomcat/webapps/manager/META-INF/context.xml 
COPY webapps/host-manager/META-INF/context.xml  /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY webapps/ROOT/blue-tomcat.css  /usr/local/tomcat/webapps/ROOT/tomcat.css

#add the deployed app to the app web server
COPY hello-world.war /usr/local/tomcat/webapps/

#CMD ['/usr/local/tomcat/bin/startup.sh']
#CMD [ '/bin/bash', '/usr/local/tomcat/bin/startup.sh']
#CMD [ 'startup.sh']

EXPOSE 8082
EXPOSE 443

