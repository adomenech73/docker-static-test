#!/bin/bash

PREFIX="adomenech73/"

cd build/sonarqube
docker build -t $PREFIX"sonarqube" .
docker push $PREFIX"sonarqube"

cd ../sonarqube-scanner
docker build -t $PREFIX"sonarqube-scanner" .
docker push $PREFIX"sonarqube-scanner"

cd ../..
