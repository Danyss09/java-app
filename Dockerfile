# Usamos una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar toda la estructura del proyecto (ajustar la ruta si es necesario)
COPY . /app/

# Verificar que el archivo JavaApp.java está en el contenedor
RUN ls -la /app/src/main/java/com/mycompany/java/app/

# Compilar el archivo JavaApp.java
RUN javac /app/src/main/java/com/mycompany/java/app/JavaApp.java

# Ejecutar la aplicación Java (ajustar la ruta de la clase principal si es necesario)
CMD ["java", "-cp", "/app/src/main/java", "com.mycompany.java.app.JavaApp"]
