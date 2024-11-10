<<<<<<< HEAD
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
=======
# Dockerfile pour le front-end (Angular)

# Étape 1 : Construction de l'application
FROM node:14 as build

# Définir le répertoire de travail pour la construction
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Compiler l'application Angular
RUN npm run build --prod

# Étape 2 : Utiliser Nginx pour servir l'application
FROM nginx:alpine

# Copier les fichiers construits dans le répertoire de Nginx
COPY --from=build /app/dist/nom-du-projet-angular /usr/share/nginx/html

# Exposer le port Nginx
EXPOSE 80

# Lancer Nginx en mode non-détaché
CMD ["nginx", "-g", "daemon off;"]
>>>>>>> d596b0c (Ajout du projet Angular complet)
