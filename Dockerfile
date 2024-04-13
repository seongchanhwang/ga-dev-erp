FROM bellsoft/liberica-openjdk-alpine:17

#gradle build 실행
CMD ["./gradlew", "clean", "build"]

#volume 디렉토리를 tmp로 지정
VOLUME /tmp

# Gradle build한 jar파일 위치를 변수로 설정
ARG JAR_FILE=build/libs/*.jar

# JAR_FILE 변수에 지정된 파일을 app.jar라는 이름으로 컨테이너에 추가
COPY ${JAR_FILE} app.jar

# 컨테이너 포트 설정
EXPOSE 8080

# 컨테이너 실행시 기본적으로 실행될 명령어 설정. java application 실행.
ENTRYPOINT ["java","-jar","/app.jar"]