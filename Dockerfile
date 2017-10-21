FROM java:8-jre
MAINTAINER yonatan <jhoni42002@gmail.com>

ADD . /target/Parts2.jar /app/

CMD ["java", "-jar", "/app/Parts2.jar"]

EXPOSE 8070