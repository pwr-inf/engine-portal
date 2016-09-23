FROM java:8-jre

RUN mkdir /app
RUN mkdir /images

ADD assets/application.properties /app
ADD assets/portal-0.1.0.jar /app

ADD assets/entry.sh /app

EXPOSE 8080

WORKDIR /app

ENTRYPOINT ./entry.sh
