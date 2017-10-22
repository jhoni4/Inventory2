FROM java:8
MAINTAINER yonatan <jhoni42002@gmail.com>

ADD . /target/Nissan.war /app/

CMD ["java", "/app/Nissan.war"]

EXPOSE 8060

