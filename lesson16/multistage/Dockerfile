FROM openjdk:11-jdk AS build
COPY test.java .
RUN javac test.java
 
FROM openjdk:11-jre AS run
COPY --from=build HelloWorld.class .
CMD java HelloWorld

