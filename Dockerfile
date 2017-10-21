FROM java:8-jre
MAINTAINER yonatan <jhoni42002@gmail.com>

ADD . /target/Nissan.jar /app/

CMD ["java", "-jar", "/app/Nissan.jar"]

EXPOSE 8070