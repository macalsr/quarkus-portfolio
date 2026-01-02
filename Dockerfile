# ---------- Build stage ----------
FROM eclipse-temurin:21-jdk AS build
WORKDIR /workspace

COPY ./mvnw ./pom.xml ./
COPY ./.mvn ./.mvn
RUN chmod +x mvnw
RUN ./mvnw -DskipTests dependency:go-offline

COPY ./src ./src
RUN ./mvnw -DskipTests package -e


FROM eclipse-temurin:21-jre
WORKDIR /work

COPY --from=build /workspace/target/quarkus-app/ /work/

EXPOSE 8080

CMD ["java", "-jar", "quarkus-run.jar"]
