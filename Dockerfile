FROM jboss/base-jdk:8
ADD microprofile-2017.9.5-hollowswarm.jar /opt/jboss/wildfly-swarm.jar
EXPOSE 8080
COPY ./target/foo.war /opt/jboss/app.war
ENTRYPOINT ["java", "-jar", "/opt/jboss/wildfly-swarm.jar", "/opt/jboss/app.war"]
