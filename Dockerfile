FROM quay.io/drsylent/cubix/block2/homework-base:java17

LABEL cubix.homework.owner="Dániel Miskovits"

ENV CUBIX_HOMEWORK="Dániel Miskovits" \
    APP_DEFAULT_MESSAGE=""

ENTRYPOINT [ "java", "-jar", "app.jar" ]

ARG ARG_APP_FULLPATH="./app.jar"
COPY ${ARG_APP_FULLPATH} ./app.jar
