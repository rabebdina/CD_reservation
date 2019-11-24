FROM java:8

COPY ./target/reservation-service-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch reservation-service-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","reservation-service-0.0.1-SNAPSHOT.jar"]
