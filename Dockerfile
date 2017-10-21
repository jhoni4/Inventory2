FROM java:8-jre
MAINTAINER yonatan <jhoni42002@gmail.com>

ADD . /target/Parts.jar /app/

CMD ["java", "-jar", "/app/Parts.jar"]

EXPOSE 8070