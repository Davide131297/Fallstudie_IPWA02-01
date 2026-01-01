# Build Stage
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run Stage
FROM tomcat:10.1-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/Fallstudie-0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port (Render uses standard Port provided by env, usually 8080 internal)
EXPOSE 8080

# The startup command is handled by the base image (catalina.sh run)
