FROM azul/zulu-openjdk-alpine:11
EXPOSE 8101
ADD target/commons-1.0.jar commons-1.0.jar 
ENTRYPOINT ["java","-jar","/commons-1.0.jar"]