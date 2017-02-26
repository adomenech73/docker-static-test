# Modulo Sonarqube

Permite la creación de la infraestructura necesaria para realizar un analisis estático del código mediante sonarqube.

La ruta del código fuente asi como las credenciales necesarias para descargarlo son definidas mediante variables de eentorno

## Construcciónn de los contenedores

Se ha creado un script para facilitar la construccion de los contenedores.

```Bash
./build.sh
```

## Despliegue rápido del módulo

Una vez modificadas las variables de entorno en el fichero ```docker-compose.yml``` podemos desplegar completamente el módulo con una sencilla instrucción.

```Bash
docker-compose up
```

## Despliegue en fases del módulo

En algunos casos, nos puede interesar lanzar varios tests sobre diferentes fuentes de código fuente, en tal caso la mejor opción es lanzar el servidor sonarqube en modo demonio. De esta manera podemos lanzar sucesivamente sonarqube-scanner mientras modificamos las variables de entorno en ```docker-compose.yml``` para que apunten a diferentes proyectos a analizar.

```
# despliegue del servidor sonarqube
docker-compose up -d sonarqube
# depliegue de sonarqube-scanner
docker-compose up sonarqube-scanner
```

## Visualización de logs

Si nos es necesario podemos visualizar los logs del servidor Sonarqube.

```
docker logs sonarqube_sonarqube_1
```

## Decomisar infraestructura

```
docker-compose down
```

a.do