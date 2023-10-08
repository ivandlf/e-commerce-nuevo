# Selecciona una imagen base con OpenJDK 17
FROM openjdk:17-alpine AS build


# Establecer un directorio de trabajo
WORKDIR /app

# Copia tu código fuente y el archivo pom.xml al contenedor
COPY src /app/src
COPY pom.xml /app/pom.xml


# Utiliza una imagen base con OpenJDK 17
FROM openjdk:17-alpine


# Exponer el puerto que utilizará la aplicación
EXPOSE 8080

# Copiar el archivo JAR construido desde la etapa anterior
COPY --from=build C:/Users/ivand/proyectos Java/e-commerce-master/target/e-commerce-0.0.1-SNAPSHOT.war /app/e-commerce-0.0.1-SNAPSHOT.war/

# Establecer el punto de entrada para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/e-commerce-0.0.1-SNAPSHOT.war"]