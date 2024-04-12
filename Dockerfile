# 1단계: Gradle을 사용하여 프로젝트 빌드
FROM gradle:7.4.0-jdk17 AS build
WORKDIR /workspace
COPY . .
RUN ./gradlew build --no-daemon

# 2단계: 빌드된 애플리케이션을 실행할 OpenJDK 17 이미지
FROM adoptopenjdk/openjdk17:alpine-jre
COPY --from=build /workspace/build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]