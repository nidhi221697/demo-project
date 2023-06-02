# we will use openjdk 8 with alpine as it is a very small linux distro
FROM FROM maven:3.6.3-jdk-8

# copy the packaged jar file into our docker image
COPY target/my-app-1.0-SNAPSHOT.jar /demo.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]
