FROM sonarqube:lts-community

# Asegurarse de ejecutar como root
USER root

# Exponer el puerto 9000 para SonarQube
EXPOSE 9000

# Actualizar los paquetes e instalar herramientas necesarias
RUN apt-get -y update && \
    apt-get install -y curl && \
    apt-get install -y maven

USER daemon

ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]