FROM sonarqube:alpine

MAINTAINER Albert Domenech <adomenech@gmail.com>

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
	apk --update add --virtual build-dependencies maven wget && \
	wget https://github.com/stefanrinderle/softvis3d/releases/download/softvis3d-0.6.0/sonar-softvis3d-plugin-0.6.0.jar && \
	cp sonar-softvis3d-plugin-0.6.0.jar $SONARQUBE_HOME/extensions/plugins && \
	apk del build-dependencies

ENV LANG es_ES.utf8
