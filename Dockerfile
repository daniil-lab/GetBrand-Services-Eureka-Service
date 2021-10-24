FROM gradle AS build

COPY . /build
WORKDIR /build
RUN gradle build

FROM adoptopenjdk:16-jdk

COPY --from=build /build/build/libs/*.jar /app/
WORKDIR /app
CMD  java -jar $(ls)
