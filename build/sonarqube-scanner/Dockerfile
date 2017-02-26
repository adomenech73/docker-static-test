FROM openjdk:8-alpine

MAINTAINER Albert Domenech <adomenech@gmail.com>

RUN apk update && \
    apk upgrade && \
    apk add wget unzip git && \
    wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.8.zip && \
    unzip sonar-scanner-2.8.zip && \
    sed -i.bak 's/^#sonar.host.url=http:\/\/localhost:9000/sonar.host.url=http:\/\/sonarqube:9000/g' /sonar-scanner-2.8/conf/sonar-scanner.properties && \
    mkdir src



ENV PATH=$PATH:/sonar-scanner-2.8/bin \
	LANG=es_ES.utf8

WORKDIR /src
COPY run.sh run.sh
ENTRYPOINT ["./run.sh"]
#CMD ["/bin/ash"]