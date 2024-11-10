# Étape 1 : Utiliser une image de base avec JDK
FROM openjdk:17

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier le fichier .jar de votre projet dans le conteneur
COPY target/*.jar app.jar

# Étape 4 : Exposer le port sur lequel l'application écoutera
EXPOSE 8089

# Étape 5 : Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "app.jar"]