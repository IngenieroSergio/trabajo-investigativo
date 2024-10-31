FROM jenkins/jenkins:lts

# Cambia a usuario root para instalar paquetes
USER root

# Actualiza el sistema e instala Docker y Node.js
RUN apt-get update && \
    apt-get install -y curl docker.io && \
    curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Cambiar de nuevo al usuario jenkins
USER jenkins
