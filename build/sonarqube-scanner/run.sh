#!/bin/ash

echo "sonar.projectKey=$PROJECT_KEY" >> sonar-project.properties
echo "sonar.projectName=$PROJECT_NAME" >> sonar-project.properties
echo "sonar.projectVersion=1.0" >> sonar-project.properties
echo "sonar.sources=." >> sonar-project.properties

if [ -z "$SORCE_BRANCH" ]; then
    git clone $SOURCE
else
	git clone -b $SORCE_BRANCH $SOURCE
fi 

sonar-scanner -X
