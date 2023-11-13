FROM openjdk:17
ADD target/TeenaJenkinsMavenProject-0.0.1-SNAPSHOT.jar TeenaJenkinsMavenProject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","TeenaJenkinsMavenProject-0.0.1-SNAPSHOT.jar"]