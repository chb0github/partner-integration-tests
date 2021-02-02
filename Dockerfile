FROM gradle
COPY . /home/gradle
RUN ./gradlew -v && ./gradlew dependencies &> /dev/null
ENTRYPOINT [ "bash", "-c", "./gradlew ${@}" ]

